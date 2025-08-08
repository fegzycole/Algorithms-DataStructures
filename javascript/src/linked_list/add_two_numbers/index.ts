class ListNode {
  val: number;
  next: ListNode | null;
  constructor(val?: number, next?: ListNode | null) {
    this.val = val === undefined ? 0 : val;
    this.next = next === undefined ? null : next;
  }
}

export const addTwoNumbers = (
  l1: ListNode | null | undefined,
  l2: ListNode | null | undefined,
): ListNode | null => {
  const dummyHead: ListNode | null | undefined = new ListNode(0);
  let current = dummyHead;

  let carry = 0;

  while (l1 || l2 || carry) {
    const val1 = l1?.val ? l1.val : 0;
    const val2 = l2?.val ? l2.val : 0;

    const sum = val1 + val2 + carry;

    carry = Math.floor(sum / 10);

    const digit = sum % 10;

    current.next = new ListNode(digit);
    current = current.next;

    l1 = l1?.next;
    l2 = l2?.next;
  }

  return dummyHead.next;
};
