package com.neusoft.service.impl;

import java.util.List;

import com.neusoft.po.Message;
import com.neusoft.po.MessageLike;
import com.neusoft.po.MessageReply;
import com.neusoft.service.MessageService;
import com.neusoft.tools.Page;

public class MessageServiceBean implements MessageService {

	@Override
	public List<Message> selectMessages(Page page, int qid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean saveMessageReply(MessageReply messageReply) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean saveMessageLike(MessageLike messageLike) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<MessageReply> selectMessageReplys(Page page, int mid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectTotalNumOfMessages(int qid) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectTotalNumOfMessageReplys(int mid) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
