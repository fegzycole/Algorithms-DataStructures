class ListNode {
  val: number;
  next: ListNode | null;
  constructor(val?: number, next?: ListNode | null) {
    this.val = val === undefined ? 0 : val;
    this.next = next === undefined ? null : next;
  }
}

export const mergeTwoLists = (
  list1: ListNode | null | undefined,
  list2: ListNode | null | undefined,
): ListNode | null => {
  list1 = list1 ?? null;
  list2 = list2 ?? null;

  const dummyHead = new ListNode(0);
  let current = dummyHead;

  while (list1 && list2) {
    if (list1.val < list2.val) {
      current.next = list1;
      list1 = list1.next;
    } else {
      current.next = list2;
      list2 = list2.next;
    }
    current = current.next;
  }

  current.next = list1 ?? list2;

  return dummyHead.next;
};
