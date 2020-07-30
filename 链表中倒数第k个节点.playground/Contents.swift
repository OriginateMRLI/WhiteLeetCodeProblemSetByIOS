import UIKit

/**
 输入一个链表，输出该链表中倒数第k个节点。为了符合大多数人的习惯，本题从1开始计数，即链表的尾节点是倒数第1个节点。例如，一个链表有6个节点，从头节点开始，它们的值依次是1、2、3、4、5、6。这个链表的倒数第3个节点是值为4的节点。
 
 示例：
 给定一个链表: 1->2->3->4->5, 和 k = 2.
 返回链表 4->5.

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/lian-biao-zhong-dao-shu-di-kge-jie-dian-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
/**
* Definition for singly-linked list.
* public class ListNode {
*     public var val: Int
*     public var next: ListNode?
*     public init(_ val: Int) {
*         self.val = val
*         self.next = nil
*     }
* }
*/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

//class Solution {
//    func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
//        guard head != nil else {
//            return nil
//        }
//        var array : [ListNode] = [(head!)]
//        var node = head
//        while node?.next != nil {
//            node = node?.next
//            array.append(node!)
//        }
//        return array[array.count - k]
//    }
//
//    let data_1 = ListNode.init(1)
//    let data_2 = ListNode.init(2)
//    let data_3 = ListNode.init(3)
//    let data_4 = ListNode.init(4)
//    let data_5 = ListNode.init(5)
//    let data_6 = ListNode.init(6)
//
//    func setData() {
//        data_1.next = data_2
//        data_2.next = data_3
//        data_3.next = data_4
//        data_4.next = data_5
//        data_5.next = data_6
//
//        let num = getKthFromEnd(data_1, 2)?.val
//        print("\(num ?? 0)")
//    }
//}

/**
 
 以下为别人的解法, 双指针
 
 */

class Solution_Other {
    func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard head != nil else {
            return nil
        }
        
        var top = head
        var node = head
        
        for _ in 0..<k {
            node = node?.next
        }
        
        while node != nil {
            node = node?.next
            top = top?.next
        }
        return top
    }
    
    let data_1 = ListNode.init(1)
    let data_2 = ListNode.init(2)
    let data_3 = ListNode.init(3)
    let data_4 = ListNode.init(4)
    let data_5 = ListNode.init(5)
    let data_6 = ListNode.init(6)
    
    func setData() {
        data_1.next = data_2
        data_2.next = data_3
        data_3.next = data_4
        data_4.next = data_5
        data_5.next = data_6
        
        let num = getKthFromEnd(data_1, 2)?.val
        print("\(num ?? 0)")
    }
}

Solution_Other.init().setData()


