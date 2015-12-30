//
//  SingleLinkList.swift
//  DataStructuresAndAlgorithmsInSwift
//
//  Created by Ravi Rathore on 12/30/15.
//  Copyright © 2015 Banago labs. All rights reserved.
//

import Foundation
enum LinkListError : ErrorType
{
    case ListIsEmpty
}
public class SingleLinkList {
    
   private var head , tail : SingleLinkNode?
 
    
    //Methods
    func traverseList()
    {   var currentNode = self.head
        while(currentNode != nil)
        {
            print(currentNode!.info)
            currentNode = currentNode!.next
        }
    }
    //check if list is empty
    func isEmpty() -> Bool
    {
        return (head == nil && tail == nil)
    }
    
    //method to add member at head
    func addFromHeader(el : Int)
    {
        if(isEmpty())
        {
            //Add first element
            head = SingleLinkNode(info: el,next: nil)
            tail = head
            
        }
        
        else
        {
            let newNode = SingleLinkNode(info: el, next: head)
            head = newNode
        }
    }
    
    //Method to add member at tail
    func addFromTail(el : Int)
    {
        if (isEmpty())
        {
            head = SingleLinkNode(info: el, next: nil)
            tail = head
        }
        else
        {
            let newNode = SingleLinkNode(info: el, next: nil)
            tail?.next = newNode
            tail = newNode
            
        }
    }
    // delete from head
    func deleteFromHead() throws
     {
        if(isEmpty())
        {
            throw LinkListError.ListIsEmpty
        }
        else if (head === tail)
        {
            head = nil
            tail = nil
        }
        else
        {
            head = head?.next
        }
    }
    
    // Delete from tail
    func deleteFromTail() throws
    {
        if(isEmpty())
        {
            throw LinkListError.ListIsEmpty
        }
        else if ( head === tail )
        {
            head = nil
            tail = nil
        }
        else
        {
            var currentNode = head
            while( currentNode?.next !== tail)
            {
                currentNode = currentNode?.next
            }
   
            tail = currentNode
            tail?.next = nil
            
        }
    }
    // contains a node
    func contains(el:Int) -> Bool
    {
        if(isEmpty())
        {
            return false
        }
        else {
            var currentNode = head
            while(currentNode != nil)
            {
                if(currentNode?.info == el)
                {
                    return true
                }
                
                currentNode = currentNode?.next
            }
            return false
        }
    }
    // method to delete a particular node. returns the deleted element or nil if element is not present
    func deleteNode(el:Int) throws -> SingleLinkNode?
    {
     if(isEmpty())
     {
        throw LinkListError.ListIsEmpty
        }
     else if (!contains(el))
     {
        return nil
        }
        else if (head?.info == el)
     {
        try self.deleteFromHead()
     }
        else if (tail?.info == el)
     {
        try self.deleteFromTail()
     }
        else
     {
        // get node to be deleted
        var currentNode = head
        while(currentNode != nil)
        {
            if(currentNode?.info == el)
            {
                break
            }
            
            currentNode = currentNode?.next
        }
        // get the previous node of node to be deleted
        var prevNode = head
        while(prevNode?.next !== currentNode)
        {
         prevNode = prevNode?.next
        }
        
        prevNode?.next = currentNode?.next
        return currentNode
        
        }
        return nil
    }
}