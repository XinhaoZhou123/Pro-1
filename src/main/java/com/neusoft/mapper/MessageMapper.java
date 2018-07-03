package com.neusoft.mapper;

import java.util.List;

import com.neusoft.po.Message;
import com.neusoft.po.MessageLike;
import com.neusoft.po.MessageReply;
import com.neusoft.tools.Page;

public interface MessageMapper {
	public List<Message> getMessages(Page page,int qid) throws Exception;
	public int addMessageReply(MessageReply messageReply) throws  Exception;
	public int addMessageLike(MessageLike messageLike,int qid) throws Exception;
	public List<MessageReply> getMessageReplys(Page page,int mid) throws Exception;
	public int getTotalNumOfMessages(int qid) throws Exception;
	public int getTotalNumOfMessagesReplys(int mid) throws Exception;
}
