.class Lorg/jacoco/agent/rt/internal_8ff85ea/asm/CurrentFrame;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;
.source "CurrentFrame.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;-><init>()V

    return-void
.end method


# virtual methods
.method execute(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "arg"    # I
    .param p3, "cw"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;
    .param p4, "item"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 51
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;-><init>()V

    .line 52
    .local v0, "successor":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;
    const/4 v1, 0x0

    invoke-virtual {p0, p3, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/CurrentFrame;->merge(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;I)Z

    .line 53
    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/CurrentFrame;->set(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;)V

    .line 54
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/CurrentFrame;->owner:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iput v1, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->inputStackTop:I

    .line 55
    return-void
.end method
