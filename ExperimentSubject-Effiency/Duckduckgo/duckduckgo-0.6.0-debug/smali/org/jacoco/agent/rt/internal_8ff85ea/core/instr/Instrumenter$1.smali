.class Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter$1;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;
.source "Instrumenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->instrument(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;I)V
    .locals 0
    .param p2, "x0"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;
    .param p3, "x1"    # I

    .line 81
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter$1;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;

    invoke-direct {p0, p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;I)V

    return-void
.end method


# virtual methods
.method protected getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "type1"    # Ljava/lang/String;
    .param p2, "type2"    # Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
