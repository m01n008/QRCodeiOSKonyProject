/*
 * Lua's 38 opcodes, different opcode types, type of each opcode.
 */

enum {
	OP_MOVE,
	OP_LOADK,
	OP_LOADBOOL,
	OP_LOADNIL,
	OP_GETUPVAL,
	OP_GETGLOBAL,
	OP_GETTABLE,
	OP_SETGLOBAL,
	OP_SETUPVAL,
	OP_SETTABLE,
	OP_NEWTABLE,
	OP_SELF,
	OP_ADD,
	OP_SUB,
	OP_MUL,
	OP_DIV,
	OP_MOD,
	OP_POW,
	OP_UNM,
	OP_NOT,
	OP_LEN,
	OP_CONCAT,
	OP_JMP,
	OP_EQ,
	OP_LT,
	OP_LE,
	OP_TEST,
	OP_TESTSET,
	OP_CALL,
	OP_TAILCALL,
	OP_RETURN,
	OP_FORLOOP,
	OP_FORPREP,
	OP_TFORLOOP,
	OP_SETLIST,
	OP_CLOSE,
	OP_CLOSURE,
	OP_VARARG
};

typedef enum opType {
	iA,
	iAB,
	iABC,
	iAC,
	iABx,
	iAsBx,
	isBx
} OpType;

extern OpType OpTypes[38];
