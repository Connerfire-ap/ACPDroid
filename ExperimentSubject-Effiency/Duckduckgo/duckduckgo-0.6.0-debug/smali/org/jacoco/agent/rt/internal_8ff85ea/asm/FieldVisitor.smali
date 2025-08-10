.class public abstract Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;
.super Ljava/lang/Object;
.source "FieldVisitor.java"


# instance fields
.field protected final api:I

.field protected fv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "api"    # I

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;)V

    .line 62
    return-void
.end method

.method public constructor <init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "fv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x50000

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 78
    :cond_1
    :goto_0
    iput p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;->api:I

    .line 79
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;->fv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;

    .line 80
    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 93
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;->fv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitAttribute(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 135
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;->fv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;->visitAttribute(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;)V

    .line 138
    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;->fv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;->visitEnd()V

    .line 149
    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 119
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 122
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;->fv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
