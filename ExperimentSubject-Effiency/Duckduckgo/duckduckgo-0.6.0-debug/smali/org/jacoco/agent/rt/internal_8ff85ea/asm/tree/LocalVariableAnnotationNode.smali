.class public Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;
.source "LocalVariableAnnotationNode.java"


# instance fields
.field public end:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;",
            ">;"
        }
    .end annotation
.end field

.field public index:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public start:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;[ILjava/lang/String;)V
    .locals 5
    .param p1, "api"    # I
    .param p2, "typeRef"    # I
    .param p3, "typePath"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;
    .param p4, "start"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .param p5, "end"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .param p6, "index"    # [I
    .param p7, "desc"    # Ljava/lang/String;

    .line 126
    invoke-direct {p0, p1, p2, p3, p7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;-><init>(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;->start:Ljava/util/List;

    .line 128
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;->end:Ljava/util/List;

    .line 130
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;->index:Ljava/util/List;

    .line 132
    array-length v0, p6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p6, v1

    .line 133
    .local v2, "i":I
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;->index:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v2    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method public constructor <init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;[ILjava/lang/String;)V
    .locals 8
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;
    .param p3, "start"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .param p4, "end"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .param p5, "index"    # [I
    .param p6, "desc"    # Ljava/lang/String;

    .line 96
    const/high16 v1, 0x50000

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;-><init>(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;[ILjava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;Z)V
    .locals 11
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    .param p2, "visible"    # Z

    .line 146
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;->start:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 147
    .local v0, "start":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;->end:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v9, v1, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 148
    .local v9, "end":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;->index:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v10, v1, [I

    .line 149
    .local v10, "index":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 150
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;->start:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v2

    aput-object v2, v0, v1

    .line 151
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;->end:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v2

    aput-object v2, v9, v1

    .line 152
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;->index:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v10, v1

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "i":I
    :cond_0
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;->typeRef:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;->typePath:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;

    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;->desc:Ljava/lang/String;

    const/4 v8, 0x1

    move-object v1, p1

    move-object v4, v0

    move-object v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)V

    .line 156
    return-void
.end method
