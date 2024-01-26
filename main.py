#export OPENAI_API_KEY="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"

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

#res = llm.invoke("how can langsmith help with testing?")

#print(res)

prompt = ChatPromptTemplate.from_messages([
    ("system", "You are world class technical documentation writer."),
    ("user", "{input}")
])

output_parser = StrOutputParser()

#loader = WebBaseLoader("https://docs.smith.langchain.com/overview")
loader = WebBaseLoader("https://drive.google.com/file/d/1cGRyrDZ7u7jSS6zkPZBEz5rc_X51KXqN/view?usp=drive_link")
docs = loader.load()

embeddings = OpenAIEmbeddings(openai_api_key="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")

text_splitter = RecursiveCharacterTextSplitter()
documents = text_splitter.split_documents(docs)
vector = FAISS.from_documents(documents, embeddings)

# First we need a prompt that we can pass into an LLM to generate this search query

chat_history = [HumanMessage(content="Can LangSmith help test my LLM applications?"), AIMessage(content="Yes!")]
prompt = ChatPromptTemplate.from_messages([
    MessagesPlaceholder(variable_name="chat_history"),
    ("user", "{input}"),
    ("user", "Given the above conversation, generate a search query to look up in order to get information relevant to the conversation")
])
retriever = vector.as_retriever()
retriever_chain = create_history_aware_retriever(llm, retriever, prompt)

#prompt = ChatPromptTemplate.from_template("""Answer the following question based only on the provided context:
#
#<context>
#{context}
#</context>
#
#Question: {input}""")


#retrieval_chain = create_retrieval_chain(retriever, document_chain)

#chain = prompt | llm | output_parser

#res = chain.invoke({"input": "how can langsmith help with testing?"})

#print(res)

response = retriever_chain.invoke({"input": "how can langsmith help with testing?"})
#print(response["answer"])

retriever_chain.invoke({
    "chat_history": chat_history,
    "input": "Tell me how"
})

prompt = ChatPromptTemplate.from_messages([
    ("system", "Answer the user's questions based on the below context:\n\n{context}"),
    MessagesPlaceholder(variable_name="chat_history"),
    ("user", "{input}"),
])
document_chain = create_stuff_documents_chain(llm, prompt)

retrieval_chain = create_retrieval_chain(retriever_chain, document_chain)

chat_history = [HumanMessage(content="Can LangSmith help test my LLM applications?"), AIMessage(content="Yes!")]
response = retrieval_chain.invoke({
    "chat_history": chat_history,
    "input": "Tell me how"
})

print(response["answer"])   

# LangSmith offers several features that can help with testing:...