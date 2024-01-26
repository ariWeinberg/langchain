from langchain_openai import ChatOpenAI
from langchain.chains import create_retrieval_chain
from langchain_core.output_parsers import StrOutputParser
from langchain_core.prompts import ChatPromptTemplate
from langchain_community.document_loaders import WebBaseLoader
from langchain_openai import OpenAIEmbeddings
from langchain_community.vectorstores import FAISS
from langchain.text_splitter import RecursiveCharacterTextSplitter
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain.chains import create_history_aware_retriever
from langchain_core.prompts import MessagesPlaceholder
from langchain_core.messages import HumanMessage, AIMessage

llm = ChatOpenAI(openai_api_key="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")  
prompt = ChatPromptTemplate.from_messages([
    ("system", "You are world class technical documentation writer."),
    ("user", "{input}")
])
output_parser = StrOutputParser()
loader = WebBaseLoader("https://en.wikipedia.org/wiki/Support_vector_machine")
docs = loader.load()
embeddings = OpenAIEmbeddings(openai_api_key="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")
text_splitter = RecursiveCharacterTextSplitter()
documents = text_splitter.split_documents(docs)
vector = FAISS.from_documents(documents, embeddings)
chat_history = None
prompt = ChatPromptTemplate.from_messages([
    MessagesPlaceholder(variable_name="chat_history"),
    ("user", "{input}"),
    ("user", "Given the above conversation, generate a search query to look up in order to get information relevant to the conversation")
])
retriever = vector.as_retriever()
retriever_chain = create_history_aware_retriever(llm, retriever, prompt)
response = retriever_chain.invoke({"input": "summarize this page in 50 words"})
prompt = ChatPromptTemplate.from_messages([
    ("system", "Answer the user's questions based on the below context:\n\n{context}"),
    MessagesPlaceholder(variable_name="chat_history"),
    ("user", "{input}"),
])
document_chain = create_stuff_documents_chain(llm, prompt)
retrieval_chain = create_retrieval_chain(retriever_chain, document_chain)
chat_history = []
response = retrieval_chain.invoke({
    "chat_history": chat_history,
    "input": "summarize this page in 50 words"
})
print(response["answer"])