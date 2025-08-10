.class public abstract Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;
.super Ljava/lang/Object;
.source "ClassVisitor.java"


# instance fields
.field protected final api:I

.field protected cv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "api"    # I

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;)V

    .line 65
    return-void
.end method

.method public constructor <init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "cv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x50000

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 81
    :cond_1
    :goto_0
    iput p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->api:I

    .line 82
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->cv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    .line 83
    return-void
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->cv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 113
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 166
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->cv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitAttribute(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 212
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->cv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitAttribute(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;)V

    .line 215
    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->cv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitEnd()V

    .line 319
    :cond_0
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;
    .locals 6
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->cv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 272
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;

    move-result-object v0

    return-object v0

    .line 274
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 237
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->cv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 240
    :cond_0
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    .locals 6
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->cv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 305
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    move-result-object v0

    return-object v0

    .line 307
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->cv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->cv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 196
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 199
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->cv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 197
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
