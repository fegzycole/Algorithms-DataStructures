/**
 * Definition for singly-linked list.
 */
class ListNode {
  val: number;
  next: ListNode | null;
  constructor(val?: number, next?: ListNode | null) {
    this.val = val === undefined ? 0 : val;
    this.next = next === undefined ? null : next;
  }
}

export const hasCycle = (head: ListNode | null): boolean => {
  let tortoise: ListNode | null | undefined = head;
  let hare: ListNode | null | undefined = head;

  while (hare && hare.next) {
    tortoise = tortoise?.next;

    hare = hare.next.next;

    if (tortoise === hare) return true;
  }

  return false;
};
