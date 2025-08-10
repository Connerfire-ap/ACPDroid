.class public Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;
.super Ljava/lang/Object;
.source "TryCatchBlockNode.java"


# instance fields
.field public end:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

.field public handler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

.field public invisibleTypeAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public start:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

.field public type:Ljava/lang/String;

.field public visibleTypeAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .param p2, "end"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .param p3, "handler"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .param p4, "type"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->start:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    .line 101
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->end:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    .line 102
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->handler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    .line 103
    iput-object p4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V
    .locals 8
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    .line 136
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->start:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->end:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v1

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->handler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    .line 136
    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitTryCatchBlock(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 139
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    nop

    .line 140
    .local v0, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 141
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;

    .line 142
    .local v3, "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;
    iget v4, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;->typePath:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;

    iget-object v6, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {p1, v4, v5, v6, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitTryCatchAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)V

    .line 140
    .end local v3    # "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 145
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    .line 146
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_3
    move v0, v2

    .line 147
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v0, :cond_4

    .line 148
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;

    .line 149
    .restart local v3    # "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;
    iget v4, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;->typePath:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;

    iget-object v6, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitTryCatchAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)V

    .line 147
    .end local v3    # "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 152
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public updateIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .line 116
    shl-int/lit8 v0, p1, 0x8

    const/high16 v1, 0x42000000    # 32.0f

    or-int/2addr v0, v1

    .line 117
    .local v0, "newTypeRef":I
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;

    .line 119
    .local v2, "tan":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;
    iput v0, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;->typeRef:I

    .line 120
    .end local v2    # "tan":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;
    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;

    .line 124
    .restart local v2    # "tan":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;
    iput v0, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;->typeRef:I

    .line 125
    .end local v2    # "tan":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;
    goto :goto_1

    .line 127
    :cond_1
    return-void
.end method
