.class Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/NoneProbeArrayStrategy;
.super Ljava/lang/Object;
.source "NoneProbeArrayStrategy.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMembers(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;I)V
    .locals 0
    .param p1, "delegate"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;
    .param p2, "probeCount"    # I

    .line 30
    return-void
.end method

.method public storeInstance(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;ZI)I
    .locals 1
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    .param p2, "clinit"    # Z
    .param p3, "variable"    # I

    .line 25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
