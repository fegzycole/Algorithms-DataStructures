export class RandomizedSet {
  private map: Map<number, number>;
  private nums: number[];

  constructor() {
    this.map = new Map();
    this.nums = [];
  }

  insert(val: number): boolean {
    if (this.map.has(val)) return false;

    this.map.set(val, this.nums.length);
    this.nums.push(val);
    return true;
  }

  remove(val: number): boolean {
    if (!this.map.has(val)) return false;

    const index = this.map.get(val)!;
    const last = this.nums[this.nums.length - 1];

    this.nums[index] = last;
    this.map.set(last, index);

    this.nums.pop();
    this.map.delete(val);
    return true;
  }

  getRandom(): number {
    const randomIndex = Math.floor(Math.random() * this.nums.length);
    return this.nums[randomIndex];
  }
}
