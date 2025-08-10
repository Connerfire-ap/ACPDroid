.class public abstract Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/ClassProbesVisitor;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;
.source "ClassProbesVisitor.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/ClassProbesVisitor;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;)V
    .locals 1
    .param p1, "cv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    .line 37
    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;)V

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # [Ljava/lang/String;

    .line 21
    invoke-virtual/range {p0 .. p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/ClassProbesVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/MethodProbesVisitor;

    move-result-object v0

    return-object v0
.end method

.method public abstract visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/MethodProbesVisitor;
.end method

.method public abstract visitTotalProbeCount(I)V
.end method
