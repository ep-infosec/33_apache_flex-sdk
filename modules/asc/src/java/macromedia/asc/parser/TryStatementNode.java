/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package macromedia.asc.parser;

import macromedia.asc.util.*;
import macromedia.asc.semantics.*;

/**
 * Node
 */
public class TryStatementNode extends Node
{
	public StatementListNode tryblock;
	public StatementListNode catchlist;
	public FinallyClauseNode finallyblock;
	public boolean finallyInserted;
	public int loop_index;
	
	public TryStatementNode(StatementListNode tryblock, StatementListNode catchlist, FinallyClauseNode finallyblock)
	{
		this.tryblock = tryblock;
		this.catchlist = catchlist;
		this.finallyblock = finallyblock;
		this.finallyInserted = false;
	}

	public Value evaluate(Context cx, Evaluator evaluator)
	{
		if (evaluator.checkFeature(cx, this))
		{
			return evaluator.evaluate(cx, this);
		}
		else
		{
			return null;
		}
	}

	public int countVars()
	{
		return (tryblock != null ? tryblock.countVars() : 0) +
			(catchlist != null ? catchlist.countVars() : 0) +
			(finallyblock != null ? finallyblock.countVars() : 0);
	}

	public boolean isBranch()
	{
		return true;
	}

	public String toString()
	{
		return "TryStatement";
	}
	private boolean skip = false;
	public void skipNode(boolean b)
	{
		skip = b;
	}

	public boolean skip()
	{
		return skip;
	}
}
