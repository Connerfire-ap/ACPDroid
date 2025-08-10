.class Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
.source "ProbeInserter.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeInserter;


# instance fields
.field private accessorStackSize:I

.field private final arrayStrategy:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;

.field private final clinit:Z

.field private final variable:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;)V
    .locals 6
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    .param p5, "arrayStrategy"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;

    .line 58
    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V

    .line 59
    const-string v0, "<clinit>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->clinit:Z

    .line 60
    iput-object p5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->arrayStrategy:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;

    .line 61
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 62
    .local v0, "pos":I
    :goto_0
    invoke-static {p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    move-result-object v1

    .local v1, "arr$":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 63
    .local v4, "t":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;
    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getSize()I

    move-result v5

    add-int/2addr v0, v5

    .line 62
    .end local v4    # "t":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 65
    .end local v1    # "arr$":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->variable:I

    .line 66
    return-void
.end method

.method private map(I)I
    .locals 1
    .param p1, "var"    # I

    .line 125
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->variable:I

    if-ge p1, v0, :cond_0

    .line 126
    return p1

    .line 128
    :cond_0
    add-int/lit8 v0, p1, 0x1

    return v0
.end method


# virtual methods
.method public insertProbe(I)V
    .locals 3
    .param p1, "id"    # I

    .line 73
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->variable:I

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitVarInsn(II)V

    .line 77
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-static {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InstrSupport;->push(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;I)V

    .line 82
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInsn(I)V

    .line 88
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInsn(I)V

    .line 89
    return-void
.end method

.method public visitCode()V
    .locals 4

    .line 93
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->arrayStrategy:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    iget-boolean v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->clinit:Z

    iget v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->variable:I

    invoke-interface {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;->storeInstance(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;ZI)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->accessorStackSize:I

    .line 94
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitCode()V

    .line 95
    return-void
.end method

.method public final visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 136
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 141
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->variable:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 142
    .local v0, "newLocal":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 143
    .local v1, "idx":I
    const/4 v2, 0x0

    .line 144
    .local v2, "newIdx":I
    const/4 v3, 0x0

    move v7, v1

    move v8, v2

    move v9, v3

    .line 145
    .end local v1    # "idx":I
    .end local v2    # "newIdx":I
    .local v7, "idx":I
    .local v8, "newIdx":I
    .local v9, "pos":I
    :goto_0
    if-lt v7, p2, :cond_1

    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->variable:I

    if-gt v9, v1, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    move v2, p1

    move v3, v8

    move-object v4, v0

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 165
    return-void

    .line 146
    :cond_1
    :goto_1
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->variable:I

    if-ne v9, v1, :cond_2

    .line 147
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "newIdx":I
    .restart local v2    # "newIdx":I
    const-string v1, "[Z"

    aput-object v1, v0, v8

    .line 148
    add-int/lit8 v9, v9, 0x1

    move v8, v2

    goto :goto_0

    .line 150
    .end local v2    # "newIdx":I
    .restart local v8    # "newIdx":I
    :cond_2
    if-ge v7, p2, :cond_5

    .line 151
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "idx":I
    .restart local v1    # "idx":I
    aget-object v2, p3, v7

    .line 152
    .local v2, "t":Ljava/lang/Object;
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "newIdx":I
    .local v3, "newIdx":I
    aput-object v2, v0, v8

    .line 153
    add-int/lit8 v9, v9, 0x1

    .line 154
    sget-object v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v2, v4, :cond_3

    sget-object v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v2, v4, :cond_4

    .line 155
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 157
    .end local v2    # "t":Ljava/lang/Object;
    :cond_4
    move v7, v1

    move v8, v3

    goto :goto_0

    .line 159
    .end local v1    # "idx":I
    .end local v3    # "newIdx":I
    .restart local v7    # "idx":I
    .restart local v8    # "newIdx":I
    :cond_5
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "newIdx":I
    .local v2, "newIdx":I
    sget-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object v1, v0, v8

    .line 160
    add-int/lit8 v9, v9, 0x1

    move v8, v2

    goto :goto_0

    .line 137
    .end local v0    # "newLocal":[Ljava/lang/Object;
    .end local v2    # "newIdx":I
    .end local v7    # "idx":I
    .end local v9    # "pos":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ClassReader.accept() should be called with EXPAND_FRAMES flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final visitIincInsn(II)V
    .locals 2
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 104
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->map(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitIincInsn(II)V

    .line 105
    return-void
.end method

.method public final visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p5, "end"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p6, "index"    # I

    .line 111
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-direct {p0, p6}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->map(I)I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;I)V

    .line 112
    return-void
.end method

.method public visitMaxs(II)V
    .locals 3
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 120
    add-int/lit8 v0, p1, 0x3

    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->accessorStackSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 121
    .local v0, "increasedStack":I
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMaxs(II)V

    .line 122
    return-void
.end method

.method public final visitVarInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 99
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-direct {p0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;->map(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitVarInsn(II)V

    .line 100
    return-void
.end method
