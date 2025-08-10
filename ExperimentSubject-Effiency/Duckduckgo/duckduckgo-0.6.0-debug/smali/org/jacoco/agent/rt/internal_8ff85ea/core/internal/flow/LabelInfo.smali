.class public final Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;
.super Ljava/lang/Object;
.source "LabelInfo.java"


# static fields
.field public static final NO_PROBE:I = -0x1


# instance fields
.field private done:Z

.field private instruction:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/Instruction;

.field private intermediate:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

.field private methodInvocationLine:Z

.field private multiTarget:Z

.field private probeid:I

.field private successor:Z

.field private target:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->target:Z

    .line 30
    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->multiTarget:Z

    .line 32
    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->successor:Z

    .line 34
    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->methodInvocationLine:Z

    .line 36
    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->done:Z

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->probeid:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->intermediate:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 42
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->instruction:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/Instruction;

    .line 46
    return-void
.end method

.method private static create(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 277
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 278
    .local v0, "info":Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;
    if-nez v0, :cond_0

    .line 279
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;-><init>()V

    move-object v0, v1

    .line 280
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->info:Ljava/lang/Object;

    .line 282
    :cond_0
    return-object v0
.end method

.method private static get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 272
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->info:Ljava/lang/Object;

    .line 273
    .local v0, "info":Ljava/lang/Object;
    instance-of v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getInstruction(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/Instruction;
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 267
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 268
    .local v0, "info":Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->instruction:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/Instruction;

    :goto_0
    return-object v1
.end method

.method public static getIntermediateLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 241
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 242
    .local v0, "info":Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->intermediate:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    :goto_0
    return-object v1
.end method

.method public static getProbeId(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)I
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 214
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 215
    .local v0, "info":Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->probeid:I

    :goto_0
    return v1
.end method

.method public static isDone(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Z
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 189
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 190
    .local v0, "info":Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->done:Z

    :goto_0
    return v1
.end method

.method public static isMethodInvocationLine(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Z
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 129
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 130
    .local v0, "info":Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->methodInvocationLine:Z

    :goto_0
    return v1
.end method

.method public static isMultiTarget(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Z
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 90
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 91
    .local v0, "info":Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->multiTarget:Z

    :goto_0
    return v1
.end method

.method public static isSuccessor(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Z
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 105
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 106
    .local v0, "info":Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->successor:Z

    :goto_0
    return v1
.end method

.method public static needsProbe(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Z
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 141
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 142
    .local v0, "info":Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->successor:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->multiTarget:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->methodInvocationLine:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static resetDone(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 163
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 164
    .local v0, "info":Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;
    if-eqz v0, :cond_0

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->done:Z

    .line 167
    :cond_0
    return-void
.end method

.method public static resetDone([Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 4
    .param p0, "labels"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 176
    move-object v0, p0

    .local v0, "arr$":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 177
    .local v3, "label":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    invoke-static {v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->resetDone(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 176
    .end local v3    # "label":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "arr$":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public static setDone(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 153
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->create(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->done:Z

    .line 154
    return-void
.end method

.method public static setInstruction(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/Instruction;)V
    .locals 1
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p1, "instruction"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/Instruction;

    .line 255
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->create(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    move-result-object v0

    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->instruction:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/Instruction;

    .line 256
    return-void
.end method

.method public static setIntermediateLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 1
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p1, "intermediate"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 229
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->create(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    move-result-object v0

    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->intermediate:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 230
    return-void
.end method

.method public static setMethodInvocationLine(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 116
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->create(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->methodInvocationLine:Z

    .line 117
    return-void
.end method

.method public static setProbeId(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;I)V
    .locals 1
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p1, "id"    # I

    .line 202
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->create(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    move-result-object v0

    iput p1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->probeid:I

    .line 203
    return-void
.end method

.method public static setSuccessor(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 3
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 71
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->create(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 72
    .local v0, "info":Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->successor:Z

    .line 73
    iget-boolean v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->target:Z

    if-eqz v2, :cond_0

    .line 74
    iput-boolean v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->multiTarget:Z

    .line 76
    :cond_0
    return-void
.end method

.method public static setTarget(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 3
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 55
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->create(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 56
    .local v0, "info":Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;
    iget-boolean v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->target:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->successor:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iput-boolean v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->target:Z

    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    iput-boolean v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/LabelInfo;->multiTarget:Z

    .line 61
    :goto_1
    return-void
.end method
