////////////////////////////////////////////////////////////////////////////////
//
//  Licensed to the Apache Software Foundation (ASF) under one or more
//  contributor license agreements.  See the NOTICE file distributed with
//  this work for additional information regarding copyright ownership.
//  The ASF licenses this file to You under the Apache License, Version 2.0
//  (the "License"); you may not use this file except in compliance with
//  the License.  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////

package mx.collections.errors
{

/**
 *  The <code>CollectionViewError</code> class represents general errors
 *  within a collection that are not related to specific activities
 *  such as Cursor seeking.
 *  Errors of this class are thrown by the ListCollectionView class.
 *  
 *  @langversion 3.0
 *  @playerversion Flash 9
 *  @playerversion AIR 1.1
 *  @productversion Flex 3
 */
public class CollectionViewError extends Error
{
    include "../../core/Version.as";

    //--------------------------------------------------------------------------
    //
    // Constructor.
    //
    //--------------------------------------------------------------------------

    /**
     *  Constructor.
	 *
	 *  @param message A message providing information about the error cause.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public function CollectionViewError(message:String)
    {
        super(message);
    }
}

}
