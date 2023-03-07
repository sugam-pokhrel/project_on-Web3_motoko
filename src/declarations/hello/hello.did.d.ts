import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'calculateintrest' : () => Promise<undefined>,
  'checkBal' : () => Promise<number>,
  'deposit' : (arg_0: number) => Promise<undefined>,
  'withdraW' : (arg_0: number) => Promise<undefined>,
}
