.class public final Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InstrSupport;
.super Ljava/lang/Object;
.source "InstrSupport.java"


# static fields
.field public static final ASM_API_VERSION:I = 0x50000

.field static final CLINIT_ACC:I = 0x1008

.field static final CLINIT_DESC:Ljava/lang/String; = "()V"

.field static final CLINIT_NAME:Ljava/lang/String; = "<clinit>"

.field public static final DATAFIELD_ACC:I = 0x108a

.field public static final DATAFIELD_DESC:Ljava/lang/String; = "[Z"

.field public static final DATAFIELD_INTF_ACC:I = 0x1019

.field public static final DATAFIELD_NAME:Ljava/lang/String; = "$jacocoData"

.field public static final INITMETHOD_ACC:I = 0x100a

.field public static final INITMETHOD_DESC:Ljava/lang/String; = "()[Z"

.field public static final INITMETHOD_NAME:Ljava/lang/String; = "$jacocoInit"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static assertNotInstrumented(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "member"    # Ljava/lang/String;
    .param p1, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 175
    const-string v0, "$jacocoData"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "$jacocoInit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Class %s is already instrumented."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static push(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;I)V
    .locals 1
    .param p0, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    .param p1, "value"    # I

    .line 192
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 193
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    .line 194
    :cond_0
    const/16 v0, -0x80

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_1

    .line 195
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_0

    .line 196
    :cond_1
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_2

    .line 197
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_0

    .line 199
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 201
    :goto_0
    return-void
.end method
