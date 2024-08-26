typedef union {
    struct {
        unsigned int opcode:6;
        unsigned int A:8;
        unsigned int C:9;
        unsigned int B:9;
    } ABC;
	
    struct {
        unsigned int opcode:6;
        unsigned int A:8;
        int Bx:18;
    } ABx;
} Instruction, *PInstruction;

typedef struct funcProto FuncProto, *PFuncProto;

typedef struct localVarInfo {
	char *pName;
	int   startPC;
	int   endPC;
} LocalVarInfo, *PLocalVarInfo;

struct funcProto {
	char *pSrcName;
	const char *pActualSrcName;
	int startLine;
	int endLine;

	unsigned short numUpvals;
	unsigned short numParams;
	unsigned short isVarArg;
	unsigned short maxStackSize;
	
	int numInstructions;
	int numConstants;
	int numFuncProtos;
	
	int numDbgSrcLinePos;
	int numDbgLocalVarInfo;
	int numDbgUpvalueNames;
	
	BOOL isLoaded;

	char *pInstLocation;
	PInstruction *pInstructions;
	__unsafe_unretained id pConstants;
	PFuncProto *pFuncProtos;

	char *pDbgLocation;
	int  *pDbgSrcLinePos;
	PLocalVarInfo *pDbgLocalVarInfo;
	char **pDbgUpvalueNames;
};

typedef struct funcContext {
	int baseIndex, regIndex, top, usedSize;
	int retStart, retEnd;
} FuncContext, *PFuncContext;
