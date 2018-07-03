package com.neusoft.service;

import java.util.List;

import com.neusoft.po.Message;
import com.neusoft.po.MessageLike;
import com.neusoft.po.MessageReply;
import com.neusoft.tools.Page;

public interface MessageService {
		public List<Message> selectMessages(Page page,int qid) throws Exception;
		public boolean saveMessageReply(MessageReply messageReply) throws Exception;
		public boolean saveMessageLike(MessageLike messageLike) throws Exception;
		public List<MessageReply> selectMessageReplys(Page page,int mid) throws Exception;
		public int selectTotalNumOfMessages(int qid) throws Exception;
		public int selectTotalNumOfMessageReplys(int mid) throws Exception;
}
