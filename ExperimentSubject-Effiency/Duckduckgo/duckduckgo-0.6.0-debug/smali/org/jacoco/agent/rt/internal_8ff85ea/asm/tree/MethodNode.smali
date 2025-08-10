.class public Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
.source "MethodNode.java"


# instance fields
.field public access:I

.field public annotationDefault:Ljava/lang/Object;

.field public attrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public desc:Ljava/lang/String;

.field public exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

.field public invisibleAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public invisibleLocalVariableAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public invisibleParameterAnnotations:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public invisibleTypeAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public localVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;",
            ">;"
        }
    .end annotation
.end field

.field public maxLocals:I

.field public maxStack:I

.field public name:Ljava/lang/String;

.field public parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/ParameterNode;",
            ">;"
        }
    .end annotation
.end field

.field public signature:Ljava/lang/String;

.field public tryCatchBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;",
            ">;"
        }
    .end annotation
.end field

.field public visibleAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public visibleLocalVariableAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public visibleParameterAnnotations:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public visibleTypeAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field private visited:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 223
    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;-><init>(I)V

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;

    if-ne v0, v1, :cond_0

    .line 227
    return-void

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "api"    # I

    .line 237
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;-><init>(I)V

    .line 238
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    .line 239
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "api"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "exceptions"    # [Ljava/lang/String;

    .line 294
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;-><init>(I)V

    .line 295
    iput p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->access:I

    .line 296
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->name:Ljava/lang/String;

    .line 297
    iput-object p4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->desc:Ljava/lang/String;

    .line 298
    iput-object p5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->signature:Ljava/lang/String;

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez p6, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, p6

    :goto_0
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->exceptions:Ljava/util/List;

    .line 301
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v0, v1

    .line 302
    .local v0, "isAbstract":Z
    if-nez v0, :cond_2

    .line 303
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    .line 305
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    .line 306
    if-eqz p6, :cond_3

    .line 307
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->exceptions:Ljava/util/List;

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 309
    :cond_3
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;-><init>()V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    .line 310
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 265
    const/high16 v1, 0x50000

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;

    if-ne v0, v1, :cond_0

    .line 269
    return-void

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private getLabelNodes([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "objs"    # [Ljava/lang/Object;

    .line 640
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 641
    .local v0, "nodes":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 642
    aget-object v2, p1, v1

    .line 643
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    if-eqz v3, :cond_0

    .line 644
    move-object v3, v2

    check-cast v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v2

    .line 646
    :cond_0
    aput-object v2, v0, v1

    .line 641
    .end local v2    # "o":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private getLabelNodes([Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .locals 3
    .param p1, "l"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 632
    array-length v0, p1

    new-array v0, v0, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    .line 633
    .local v0, "nodes":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 634
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v2

    aput-object v2, v0, v1

    .line 633
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 636
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;)V
    .locals 7
    .param p1, "cv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    .line 722
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 723
    .local v0, "exceptions":[Ljava/lang/String;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->exceptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 724
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->access:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->desc:Ljava/lang/String;

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->signature:Ljava/lang/String;

    move-object v1, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    move-result-object v1

    .line 726
    .local v1, "mv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    if-eqz v1, :cond_0

    .line 727
    invoke-virtual {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V

    .line 729
    :cond_0
    return-void
.end method

.method public accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V
    .locals 8
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    .line 740
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->parameters:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 741
    .local v0, "n":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 742
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->parameters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/ParameterNode;

    .line 743
    .local v3, "parameter":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/ParameterNode;
    iget-object v4, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/ParameterNode;->name:Ljava/lang/String;

    iget v5, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/ParameterNode;->access:I

    invoke-virtual {p1, v4, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    .line 741
    .end local v3    # "parameter":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/ParameterNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 746
    :cond_1
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->annotationDefault:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 747
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitAnnotationDefault()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v3

    .line 748
    .local v3, "av":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->annotationDefault:Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 749
    if-eqz v3, :cond_2

    .line 750
    invoke-virtual {v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visitEnd()V

    .line 753
    .end local v3    # "av":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    :cond_2
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    move v0, v3

    .line 754
    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x1

    if-ge v2, v0, :cond_4

    .line 755
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;

    .line 756
    .local v4, "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;
    iget-object v5, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v5, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)V

    .line 754
    .end local v4    # "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 758
    :cond_4
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_4
    move v0, v4

    .line 759
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_6

    .line 760
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;

    .line 761
    .restart local v4    # "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;
    iget-object v5, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v5, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)V

    .line 759
    .end local v4    # "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 763
    :cond_6
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v4, :cond_7

    const/4 v4, 0x0

    goto :goto_6

    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_6
    move v0, v4

    .line 764
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_8

    .line 765
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;

    .line 766
    .local v4, "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;
    iget v5, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v6, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;->typePath:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;

    iget-object v7, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v7, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)V

    .line 764
    .end local v4    # "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 769
    :cond_8
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v4, :cond_9

    const/4 v4, 0x0

    goto :goto_8

    .line 770
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_8
    move v0, v4

    .line 771
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_a

    .line 772
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;

    .line 773
    .restart local v4    # "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;
    iget v5, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v6, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;->typePath:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;

    iget-object v7, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v7, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)V

    .line 771
    .end local v4    # "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 776
    :cond_a
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    if-nez v4, :cond_b

    const/4 v4, 0x0

    goto :goto_a

    :cond_b
    array-length v4, v4

    :goto_a
    move v0, v4

    .line 778
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_e

    .line 779
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    aget-object v4, v4, v2

    .line 780
    .local v4, "l":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez v4, :cond_c

    .line 781
    goto :goto_d

    .line 783
    :cond_c
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 784
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;

    .line 785
    .local v6, "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;
    iget-object v7, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v2, v7, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)V

    .line 783
    .end local v6    # "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 778
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v5    # "j":I
    :cond_d
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 788
    :cond_e
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    if-nez v4, :cond_f

    const/4 v4, 0x0

    goto :goto_e

    :cond_f
    array-length v4, v4

    :goto_e
    move v0, v4

    .line 790
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_12

    .line 791
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    aget-object v4, v4, v2

    .line 792
    .restart local v4    # "l":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez v4, :cond_10

    .line 793
    goto :goto_11

    .line 795
    :cond_10
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_10
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_11

    .line 796
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;

    .line 797
    .restart local v6    # "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;
    iget-object v7, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v2, v7, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)V

    .line 795
    .end local v6    # "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 790
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v5    # "j":I
    :cond_11
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 800
    :cond_12
    iget-boolean v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visited:Z

    if-eqz v4, :cond_13

    .line 801
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->resetLabels()V

    .line 803
    :cond_13
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->attrs:Ljava/util/List;

    if-nez v4, :cond_14

    const/4 v4, 0x0

    goto :goto_12

    :cond_14
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_12
    move v0, v4

    .line 804
    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_15

    .line 805
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->attrs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    invoke-virtual {p1, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitAttribute(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;)V

    .line 804
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 808
    :cond_15
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size()I

    move-result v4

    if-lez v4, :cond_1e

    .line 809
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitCode()V

    .line 811
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    if-nez v4, :cond_16

    const/4 v4, 0x0

    goto :goto_14

    :cond_16
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_14
    move v0, v4

    .line 812
    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_17

    .line 813
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;

    invoke-virtual {v4, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->updateIndex(I)V

    .line 814
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;

    invoke-virtual {v4, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V

    .line 812
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 817
    :cond_17
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v4, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V

    .line 819
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    if-nez v4, :cond_18

    const/4 v4, 0x0

    goto :goto_16

    :cond_18
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_16
    move v0, v4

    .line 820
    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_19

    .line 821
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;

    invoke-virtual {v4, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V

    .line 820
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 824
    :cond_19
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    if-nez v4, :cond_1a

    const/4 v4, 0x0

    goto :goto_18

    .line 825
    :cond_1a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_18
    move v0, v4

    .line 826
    const/4 v2, 0x0

    :goto_19
    if-ge v2, v0, :cond_1b

    .line 827
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;

    invoke-virtual {v4, p1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;Z)V

    .line 826
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 829
    :cond_1b
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    if-nez v4, :cond_1c

    const/4 v4, 0x0

    goto :goto_1a

    .line 830
    :cond_1c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_1a
    move v0, v4

    .line 831
    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_1d

    .line 832
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;

    invoke-virtual {v4, p1, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;Z)V

    .line 831
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 835
    :cond_1d
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->maxStack:I

    iget v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->maxLocals:I

    invoke-virtual {p1, v1, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMaxs(II)V

    .line 836
    iput-boolean v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visited:Z

    .line 838
    :cond_1e
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitEnd()V

    .line 839
    return-void
.end method

.method public check(I)V
    .locals 7
    .param p1, "api"    # I

    .line 666
    const/high16 v0, 0x40000

    if-ne p1, v0, :cond_15

    .line 667
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 668
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 671
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 672
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 673
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 675
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 676
    .local v0, "n":I
    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v0, :cond_9

    .line 677
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;

    .line 678
    .local v3, "tcb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;
    iget-object v4, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v4, :cond_6

    iget-object v4, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    .line 679
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_5

    goto :goto_4

    .line 680
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 682
    :cond_6
    :goto_4
    iget-object v4, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v4, :cond_8

    iget-object v4, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 683
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_7

    goto :goto_5

    .line 684
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 676
    .end local v3    # "tcb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;
    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 687
    .end local v2    # "i":I
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 688
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->get(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    move-result-object v3

    .line 689
    .local v3, "insn":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    iget-object v4, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v4, :cond_b

    iget-object v4, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    .line 690
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_a

    goto :goto_7

    .line 691
    :cond_a
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 693
    :cond_b
    :goto_7
    iget-object v4, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v4, :cond_d

    iget-object v4, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 694
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_c

    goto :goto_8

    .line 695
    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 697
    :cond_d
    :goto_8
    instance-of v4, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;

    if-eqz v4, :cond_10

    .line 698
    move-object v4, v3

    check-cast v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;

    iget-boolean v4, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;->itf:Z

    .line 699
    .local v4, "itf":Z
    iget v5, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->opcode:I

    const/16 v6, 0xb9

    if-ne v5, v6, :cond_e

    const/4 v5, 0x1

    goto :goto_9

    :cond_e
    const/4 v5, 0x0

    :goto_9
    if-ne v4, v5, :cond_f

    goto :goto_a

    .line 700
    :cond_f
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 687
    .end local v3    # "insn":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    .end local v4    # "itf":Z
    :cond_10
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 704
    .end local v2    # "i":I
    :cond_11
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    if-eqz v1, :cond_13

    .line 705
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_12

    goto :goto_b

    .line 706
    :cond_12
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 708
    :cond_13
    :goto_b
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    if-eqz v1, :cond_15

    .line 709
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_14

    goto :goto_c

    .line 710
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 713
    .end local v0    # "n":I
    :cond_15
    :goto_c
    return-void
.end method

.method protected getLabelNode(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .locals 1
    .param p1, "l"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 625
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->info:Ljava/lang/Object;

    instance-of v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    if-nez v0, :cond_0

    .line 626
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;-><init>()V

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->info:Ljava/lang/Object;

    .line 628
    :cond_0
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->info:Ljava/lang/Object;

    check-cast v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 339
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;

    invoke-direct {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 341
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    if-nez v2, :cond_0

    .line 342
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    .line 344
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    :cond_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v2, :cond_2

    .line 347
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    .line 349
    :cond_2
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    :goto_0
    return-object v0
.end method

.method public visitAnnotationDefault()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 3

    .line 327
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;

    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode$1;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;I)V

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public visitAttribute(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;)V
    .locals 2
    .param p1, "attr"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 403
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->attrs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->attrs:Ljava/util/List;

    .line 406
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->attrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method

.method public visitCode()V
    .locals 0

    .line 411
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 612
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FieldInsnNode;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FieldInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 445
    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move-object v4, v1

    goto :goto_0

    .line 417
    :cond_0
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->getLabelNodes([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-nez p5, :cond_1

    move-object v6, v1

    goto :goto_1

    .line 418
    :cond_1
    invoke-direct {p0, p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->getLabelNodes([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    :goto_1
    move-object v1, v7

    move v2, p1

    move v3, p2

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;-><init>(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 416
    invoke-virtual {v0, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 419
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 2
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 491
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/IincInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/IincInsnNode;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 492
    return-void
.end method

.method public visitInsn(I)V
    .locals 2
    .param p1, "opcode"    # I

    .line 423
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnNode;

    invoke-direct {v1, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnNode;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 424
    return-void
.end method

.method public visitInsnAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 4
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 518
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->getLast()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    move-result-object v0

    .line 519
    .local v0, "insn":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    :goto_0
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 520
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->getPrevious()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    move-result-object v0

    goto :goto_0

    .line 523
    :cond_0
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;

    invoke-direct {v1, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;)V

    .line 524
    .local v1, "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;
    const/4 v2, 0x1

    if-eqz p4, :cond_2

    .line 525
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v3, :cond_1

    .line 526
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    .line 529
    :cond_1
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 531
    :cond_2
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v3, :cond_3

    .line 532
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 535
    :cond_3
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    :goto_1
    return-object v1
.end method

.method public visitIntInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 428
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/IntInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/IntInsnNode;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 429
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 471
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InvokeDynamicInsnNode;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InvokeDynamicInsnNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 472
    return-void
.end method

.method public visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 476
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/JumpInsnNode;

    invoke-virtual {p0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/JumpInsnNode;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 477
    return-void
.end method

.method public visitLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 2
    .param p1, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 481
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 482
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 2
    .param p1, "cst"    # Ljava/lang/Object;

    .line 486
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LdcInsnNode;

    invoke-direct {v1, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LdcInsnNode;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 487
    return-void
.end method

.method public visitLineNumber(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 3
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 601
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LineNumberNode;

    invoke-virtual {p0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LineNumberNode;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 602
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p5, "end"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p6, "index"    # I

    .line 572
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    new-instance v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;

    .line 573
    invoke-virtual {p0, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v5

    invoke-virtual {p0, p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v6

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;I)V

    .line 572
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    return-void
.end method

.method public visitLocalVariableAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 8
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;
    .param p3, "start"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p4, "end"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p5, "index"    # [I
    .param p6, "desc"    # Ljava/lang/String;
    .param p7, "visible"    # Z

    .line 580
    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;

    .line 581
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->getLabelNodes([Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v3

    invoke-direct {p0, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->getLabelNodes([Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v4

    move-object v0, v7

    move v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;[ILjava/lang/String;)V

    .line 583
    .local v0, "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableAnnotationNode;
    const/4 v1, 0x1

    if-eqz p7, :cond_1

    .line 584
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    if-nez v2, :cond_0

    .line 585
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    .line 588
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 590
    :cond_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    if-nez v2, :cond_2

    .line 591
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    .line 594
    :cond_2
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    :goto_0
    return-object v0
.end method

.method public visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 4
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 504
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v2

    .line 505
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->getLabelNodes([Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;[I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;)V

    .line 504
    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 506
    return-void
.end method

.method public visitMaxs(II)V
    .locals 0
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 606
    iput p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->maxStack:I

    .line 607
    iput p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->maxLocals:I

    .line 608
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 451
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    .line 452
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 456
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .line 461
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    .line 462
    invoke-super/range {p0 .. p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 463
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;

    move-object v1, v7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 466
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 510
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MultiANewArrayInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MultiANewArrayInsnNode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 511
    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "access"    # I

    .line 318
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->parameters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->parameters:Ljava/util/List;

    .line 321
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->parameters:Ljava/util/List;

    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/ParameterNode;

    invoke-direct {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/ParameterNode;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 4
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 376
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;

    invoke-direct {v0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;
    const/4 v1, 0x1

    if-eqz p3, :cond_2

    .line 378
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    if-nez v2, :cond_0

    .line 379
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->desc:Ljava/lang/String;

    invoke-static {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    move-result-object v2

    array-length v2, v2

    .line 380
    .local v2, "params":I
    new-array v3, v2, [Ljava/util/List;

    check-cast v3, [Ljava/util/List;

    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    .line 382
    .end local v2    # "params":I
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    aget-object v3, v2, p1

    if-nez v3, :cond_1

    .line 383
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v3, v2, p1

    .line 386
    :cond_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 388
    :cond_2
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    if-nez v2, :cond_3

    .line 389
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->desc:Ljava/lang/String;

    invoke-static {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    move-result-object v2

    array-length v2, v2

    .line 390
    .restart local v2    # "params":I
    new-array v3, v2, [Ljava/util/List;

    check-cast v3, [Ljava/util/List;

    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    .line 392
    .end local v2    # "params":I
    :cond_3
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    aget-object v3, v2, p1

    if-nez v3, :cond_4

    .line 393
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v3, v2, p1

    .line 396
    :cond_4
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :goto_0
    return-object v0
.end method

.method public varargs visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 4
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p4, "labels"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 497
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TableSwitchInsnNode;

    invoke-virtual {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v2

    .line 498
    invoke-direct {p0, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->getLabelNodes([Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v3

    invoke-direct {v1, p1, p2, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TableSwitchInsnNode;-><init>(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;)V

    .line 497
    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 499
    return-void
.end method

.method public visitTryCatchAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 4
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 550
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    const v1, 0xffff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;

    .line 551
    .local v0, "tcb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;

    invoke-direct {v1, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;)V

    .line 552
    .local v1, "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;
    const/4 v2, 0x1

    if-eqz p4, :cond_1

    .line 553
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v3, :cond_0

    .line 554
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    .line 557
    :cond_0
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 559
    :cond_1
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v3, :cond_2

    .line 560
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 563
    :cond_2
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    :goto_0
    return-object v1
.end method

.method public visitTryCatchBlock(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Ljava/lang/String;)V
    .locals 5
    .param p1, "start"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p2, "end"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p3, "handler"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 543
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v2

    .line 544
    invoke-virtual {p0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Ljava/lang/String;)V

    .line 543
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    return-void
.end method

.method public visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 3
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 357
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;)V

    .line 358
    .local v0, "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeAnnotationNode;
    const/4 v1, 0x1

    if-eqz p4, :cond_1

    .line 359
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v2, :cond_0

    .line 360
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    .line 362
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    :cond_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v2, :cond_2

    .line 365
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 367
    :cond_2
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :goto_0
    return-object v0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TypeInsnNode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 439
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 433
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/VarInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/VarInsnNode;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 434
    return-void
.end method
