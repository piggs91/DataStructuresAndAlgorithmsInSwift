//
//  SingleLinkedListGeneric.swift
//  DataStructuresAndAlgorithmsInSwift
//
//  Created by Ravi Rathore on 12/31/15.
//  Copyright © 2015 Banago labs. All rights reserved.
//

import Foundation

public class SingleLinkedListGeneric<T : Equatable>
{
    var head,tail : SingleNodeGeneric<T>?
    
    init()
    {
        head = nil
        tail = nil
    }
    
    func isEmpty() -> Bool
    {
        return (head == nil && tail == nil)
    }
    
    func traverseList()
    {
     if(isEmpty())
     {
        return
        }
     else
     {
        var currentNode = head
        while(currentNode != nil)
        {
            print(currentNode!.info)
            currentNode = currentNode?.next
        }
        }
    }
    
    func addToHead(el:T)
    {
     if(isEmpty())
     {
        let newNode = SingleNodeGeneric<T>(info: el, next: nil)
        head = newNode
        tail = newNode
        }
    else
     {
        let newNode = SingleNodeGeneric<T>(info: el, next: head)
        head = newNode
        }
    }
    
    func deleteFromHead() throws
    {
        if(isEmpty())
        {
            throw LinkListError.ListIsEmpty
          
        }
        else if (tail === head)
        {
            tail  = nil
            head = nil
        }
        else
        {
            head = head?.next
        }
    }
    
    func addToTail(el:T)
    {
        if(isEmpty())
        {
            let newNode = SingleNodeGeneric<T>(info: el, next: nil)
            head = newNode
            tail = newNode
        }
        else
        {
            let newNode = SingleNodeGeneric<T>(info: el, next: nil)
            tail?.next = newNode
            tail = newNode
        }
    }
    
    // contains a node
    func contains(el:T) -> Bool
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

}