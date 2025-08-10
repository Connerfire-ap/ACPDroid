.class Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
.super Ljava/util/AbstractMap;
.source "JSRInlinerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Instantiation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;",
        "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;",
        ">;"
    }
.end annotation


# instance fields
.field final previous:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;

.field public final rangeTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;",
            ">;"
        }
    .end annotation
.end field

.field public final returnLabel:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

.field public final subroutine:Ljava/util/BitSet;

.field final synthetic this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/BitSet;)V
    .locals 6
    .param p2, "prev"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
    .param p3, "sub"    # Ljava/util/BitSet;

    .line 618
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 611
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->rangeTable:Ljava/util/Map;

    .line 619
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;

    .line 620
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    .line 621
    move-object v0, p2

    .local v0, "p":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
    :goto_0
    if-eqz v0, :cond_1

    .line 622
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    if-eq v1, p3, :cond_0

    .line 621
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;

    goto :goto_0

    .line 623
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recursive invocation of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 629
    .end local v0    # "p":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
    :cond_1
    if-eqz p2, :cond_2

    .line 630
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    goto :goto_1

    .line 632
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    .line 641
    :goto_1
    const/4 v0, 0x0

    .line 642
    .local v0, "duplbl":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size()I

    move-result v2

    .local v2, "c":I
    :goto_2
    if-ge v1, v2, :cond_6

    .line 643
    iget-object v3, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v3, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->get(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    move-result-object v3

    .line 645
    .local v3, "insn":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    invoke-virtual {v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 646
    move-object v4, v3

    check-cast v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    .line 648
    .local v4, "ilbl":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    if-nez v0, :cond_3

    .line 651
    new-instance v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-direct {v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;-><init>()V

    move-object v0, v5

    .line 657
    :cond_3
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->rangeTable:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v4    # "ilbl":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    goto :goto_3

    .line 658
    :cond_4
    invoke-virtual {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->findOwner(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;

    move-result-object v4

    if-ne v4, p0, :cond_5

    .line 662
    const/4 v0, 0x0

    goto :goto_4

    .line 658
    :cond_5
    :goto_3
    nop

    .line 642
    .end local v3    # "insn":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 665
    .end local v1    # "i":I
    .end local v2    # "c":I
    :cond_6
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;",
            ">;>;"
        }
    .end annotation

    .line 744
    const/4 v0, 0x0

    return-object v0
.end method

.method public findOwner(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
    .locals 3
    .param p1, "i"    # I

    .line 691
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    const/4 v0, 0x0

    return-object v0

    .line 694
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->dualCitizens:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    return-object p0

    .line 697
    :cond_1
    move-object v0, p0

    .line 698
    .local v0, "own":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;

    .local v1, "p":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
    :goto_0
    if-eqz v1, :cond_3

    .line 699
    iget-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    invoke-virtual {v2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 700
    move-object v0, v1

    .line 698
    :cond_2
    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;

    goto :goto_0

    .line 703
    .end local v1    # "p":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
    :cond_3
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 584
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->get(Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 749
    move-object v0, p1

    check-cast v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->gotoLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v0

    return-object v0
.end method

.method public gotoLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .locals 2
    .param p1, "l"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    .line 720
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->findOwner(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;

    move-result-object v0

    .line 721
    .local v0, "owner":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->rangeTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    return-object v1
.end method

.method public rangeLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .locals 1
    .param p1, "l"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    .line 737
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->rangeTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    return-object v0
.end method
