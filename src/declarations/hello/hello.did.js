export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'calculateintrest' : IDL.Func([], [], ['oneway']),
    'checkBal' : IDL.Func([], [IDL.Float64], ['query']),
    'deposit' : IDL.Func([IDL.Float64], [], ['oneway']),
    'withdraW' : IDL.Func([IDL.Float64], [], ['oneway']),
  });
};
export const init = ({ IDL }) => { return []; };
