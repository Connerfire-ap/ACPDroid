.class public Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/ModifiedSystemClassRuntime;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AbstractRuntime;
.source "ModifiedSystemClassRuntime.java"


# static fields
.field private static final ACCESS_FIELD_TYPE:Ljava/lang/String; = "Ljava/lang/Object;"


# instance fields
.field private final accessFieldName:Ljava/lang/String;

.field private final systemClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final systemClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p2, "accessFieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    .local p1, "systemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AbstractRuntime;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/ModifiedSystemClassRuntime;->systemClass:Ljava/lang/Class;

    .line 59
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/ModifiedSystemClassRuntime;->systemClassName:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/ModifiedSystemClassRuntime;->accessFieldName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 36
    invoke-static {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/ModifiedSystemClassRuntime;->createDataField(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;Ljava/lang/String;)V

    return-void
.end method

.method private static createDataField(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;Ljava/lang/String;)V
    .locals 6
    .param p0, "visitor"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;
    .param p1, "dataField"    # Ljava/lang/String;

    .line 173
    const/16 v1, 0x1089

    const-string v3, "Ljava/lang/Object;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;

    .line 176
    return-void
.end method

.method public static createFor(Ljava/lang/instrument/Instrumentation;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IRuntime;
    .locals 1
    .param p0, "inst"    # Ljava/lang/instrument/Instrumentation;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 101
    const-string v0, "$jacocoAccess"

    invoke-static {p0, p1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/ModifiedSystemClassRuntime;->createFor(Ljava/lang/instrument/Instrumentation;Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IRuntime;

    move-result-object v0

    return-object v0
.end method

.method public static createFor(Ljava/lang/instrument/Instrumentation;Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IRuntime;
    .locals 6
    .param p0, "inst"    # Ljava/lang/instrument/Instrumentation;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "accessFieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 123
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/ModifiedSystemClassRuntime$1;

    invoke-direct {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/ModifiedSystemClassRuntime$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v0, "transformer":Ljava/lang/instrument/ClassFileTransformer;
    invoke-interface {p0, v0}, Ljava/lang/instrument/Instrumentation;->addTransformer(Ljava/lang/instrument/ClassFileTransformer;)V

    .line 135
    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 136
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0, v0}, Ljava/lang/instrument/Instrumentation;->removeTransformer(Ljava/lang/instrument/ClassFileTransformer;)Z

    .line 138
    :try_start_0
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    nop

    .line 143
    new-instance v2, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/ModifiedSystemClassRuntime;

    invoke-direct {v2, v1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/ModifiedSystemClassRuntime;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v2

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    new-instance v3, Ljava/lang/RuntimeException;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, "Class %s could not be instrumented."

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static instrument([BLjava/lang/String;)[B
    .locals 4
    .param p0, "source"    # [B
    .param p1, "accessFieldName"    # Ljava/lang/String;

    .line 157
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;

    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/Java9Support;->downgradeIfRequired([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;-><init>([B)V

    .line 158
    .local v0, "reader":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;I)V

    .line 159
    .local v1, "writer":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;
    new-instance v2, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/ModifiedSystemClassRuntime$2;

    const/high16 v3, 0x50000

    invoke-direct {v2, v3, v1, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/ModifiedSystemClassRuntime$2;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;I)V

    .line 168
    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public generateDataAccessor(JLjava/lang/String;ILorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)I
    .locals 4
    .param p1, "classid"    # J
    .param p3, "classname"    # Ljava/lang/String;
    .param p4, "probecount"    # I
    .param p5, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    .line 77
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/ModifiedSystemClassRuntime;->systemClassName:Ljava/lang/String;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/ModifiedSystemClassRuntime;->accessFieldName:Ljava/lang/String;

    const/16 v2, 0xb2

    const-string v3, "Ljava/lang/Object;"

    invoke-virtual {p5, v2, v0, v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p1, p2, p3, p4, p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;->generateAccessCall(JLjava/lang/String;ILorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V

    .line 82
    const/4 v0, 0x6

    return v0
.end method

.method public shutdown()V
    .locals 0

    .line 72
    return-void
.end method

.method public startup(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;)V
    .locals 2
    .param p1, "data"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-super {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AbstractRuntime;->startup(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;)V

    .line 66
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/ModifiedSystemClassRuntime;->systemClass:Ljava/lang/Class;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/ModifiedSystemClassRuntime;->accessFieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 67
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    return-void
.end method
