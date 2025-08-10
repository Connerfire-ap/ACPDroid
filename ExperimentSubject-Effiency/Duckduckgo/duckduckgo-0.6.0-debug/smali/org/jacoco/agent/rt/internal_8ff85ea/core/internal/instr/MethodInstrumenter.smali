.class Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/MethodProbesVisitor;
.source "MethodInstrumenter.java"


# instance fields
.field private final probeInserter:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeInserter;


# direct methods
.method public constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeInserter;)V
    .locals 0
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    .param p2, "probeInserter"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeInserter;

    .line 39
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/MethodProbesVisitor;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V

    .line 40
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->probeInserter:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeInserter;

    .line 41
    return-void
.end method

.method private createIntermediate(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .locals 2
    .param p1, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 148
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->getProbeId(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 149
    move-object v0, p1

    .local v0, "intermediate":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    goto :goto_0

    .line 151
    .end local v0    # "intermediate":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :cond_0
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->isDone(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->getIntermediateLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v0

    .restart local v0    # "intermediate":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    goto :goto_0

    .line 154
    .end local v0    # "intermediate":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :cond_1
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;-><init>()V

    .line 155
    .restart local v0    # "intermediate":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    invoke-static {p1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->setIntermediateLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 156
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->setDone(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 159
    :goto_0
    return-object v0
.end method

.method private createIntermediates([Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .locals 3
    .param p1, "labels"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 139
    array-length v0, p1

    new-array v0, v0, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 140
    .local v0, "intermediates":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 141
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->createIntermediate(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v2

    aput-object v2, v0, v1

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private getInverted(I)I
    .locals 1
    .param p1, "opcode"    # I

    .line 73
    sparse-switch p1, :sswitch_data_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 105
    :sswitch_0
    const/16 v0, 0xc6

    return v0

    .line 103
    :sswitch_1
    const/16 v0, 0xc7

    return v0

    .line 101
    :sswitch_2
    const/16 v0, 0xa5

    return v0

    .line 99
    :sswitch_3
    const/16 v0, 0xa6

    return v0

    .line 97
    :sswitch_4
    const/16 v0, 0xa3

    return v0

    .line 95
    :sswitch_5
    const/16 v0, 0xa4

    return v0

    .line 93
    :sswitch_6
    const/16 v0, 0xa1

    return v0

    .line 91
    :sswitch_7
    const/16 v0, 0xa2

    return v0

    .line 89
    :sswitch_8
    const/16 v0, 0x9f

    return v0

    .line 87
    :sswitch_9
    const/16 v0, 0xa0

    return v0

    .line 85
    :sswitch_a
    const/16 v0, 0x9d

    return v0

    .line 83
    :sswitch_b
    const/16 v0, 0x9e

    return v0

    .line 81
    :sswitch_c
    const/16 v0, 0x9b

    return v0

    .line 79
    :sswitch_d
    const/16 v0, 0x9c

    return v0

    .line 77
    :sswitch_e
    const/16 v0, 0x99

    return v0

    .line 75
    :sswitch_f
    const/16 v0, 0x9a

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x99 -> :sswitch_f
        0x9a -> :sswitch_e
        0x9b -> :sswitch_d
        0x9c -> :sswitch_c
        0x9d -> :sswitch_b
        0x9e -> :sswitch_a
        0x9f -> :sswitch_9
        0xa0 -> :sswitch_8
        0xa1 -> :sswitch_7
        0xa2 -> :sswitch_6
        0xa3 -> :sswitch_5
        0xa4 -> :sswitch_4
        0xa5 -> :sswitch_3
        0xa6 -> :sswitch_2
        0xc6 -> :sswitch_1
        0xc7 -> :sswitch_0
    .end sparse-switch
.end method

.method private insertIntermediateProbe(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/IFrame;)V
    .locals 3
    .param p1, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p2, "frame"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/IFrame;

    .line 163
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->getProbeId(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)I

    move-result v0

    .line 164
    .local v0, "probeId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->isDone(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->getIntermediateLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 166
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-interface {p2, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/IFrame;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V

    .line 167
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->probeInserter:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeInserter;

    invoke-interface {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeInserter;->insertProbe(I)V

    .line 168
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    const/16 v2, 0xa7

    invoke-virtual {v1, v2, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 169
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->setDone(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 171
    :cond_0
    return-void
.end method

.method private insertIntermediateProbes(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/IFrame;)V
    .locals 4
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p2, "labels"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p3, "frame"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/IFrame;

    .line 175
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->resetDone(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 176
    invoke-static {p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->resetDone([Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 177
    invoke-direct {p0, p1, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->insertIntermediateProbe(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/IFrame;)V

    .line 178
    move-object v0, p2

    .local v0, "arr$":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 179
    .local v3, "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    invoke-direct {p0, v3, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->insertIntermediateProbe(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/IFrame;)V

    .line 178
    .end local v3    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "arr$":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method


# virtual methods
.method public visitInsnWithProbe(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "probeId"    # I

    .line 52
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->probeInserter:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeInserter;

    invoke-interface {v0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeInserter;->insertProbe(I)V

    .line 53
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInsn(I)V

    .line 54
    return-void
.end method

.method public visitJumpInsnWithProbe(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;ILorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/IFrame;)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p3, "probeId"    # I
    .param p4, "frame"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/IFrame;

    .line 59
    const/16 v0, 0xa7

    if-ne p1, v0, :cond_0

    .line 60
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->probeInserter:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeInserter;

    invoke-interface {v1, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeInserter;->insertProbe(I)V

    .line 61
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v1, v0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    goto :goto_0

    .line 63
    :cond_0
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;-><init>()V

    .line 64
    .local v1, "intermediate":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->getInverted(I)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 65
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->probeInserter:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeInserter;

    invoke-interface {v2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeInserter;->insertProbe(I)V

    .line 66
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v2, v0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 67
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 68
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-interface {p4, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/IFrame;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V

    .line 70
    .end local v1    # "intermediate":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :goto_0
    return-void
.end method

.method public visitLookupSwitchInsnWithProbes(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/IFrame;)V
    .locals 3
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p4, "frame"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/IFrame;

    .line 128
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->resetDone(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 129
    invoke-static {p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->resetDone([Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 130
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->createIntermediate(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v0

    .line 131
    .local v0, "newDflt":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->createIntermediates([Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v1

    .line 132
    .local v1, "newLabels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v2, v0, p2, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 135
    invoke-direct {p0, p1, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->insertIntermediateProbes(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/IFrame;)V

    .line 136
    return-void
.end method

.method public visitProbe(I)V
    .locals 1
    .param p1, "probeId"    # I

    .line 47
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->probeInserter:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeInserter;

    invoke-interface {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeInserter;->insertProbe(I)V

    .line 48
    return-void
.end method

.method public visitTableSwitchInsnWithProbes(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/IFrame;)V
    .locals 3
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p4, "labels"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p5, "frame"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/IFrame;

    .line 114
    invoke-static {p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->resetDone(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 115
    invoke-static {p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->resetDone([Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 116
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->createIntermediate(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v0

    .line 117
    .local v0, "newDflt":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    invoke-direct {p0, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->createIntermediates([Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v1

    .line 118
    .local v1, "newLabels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 121
    invoke-direct {p0, p3, p4, p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;->insertIntermediateProbes(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/IFrame;)V

    .line 122
    return-void
.end method
