.class final Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AvlBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private leavesSkipped:I

.field private leavesToSkip:I

.field private size:I

.field private stack:Lcom/squareup/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 668
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;, "Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 685
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;, "Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    .local p1, "node":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 686
    const/4 v0, 0x1

    iput v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    .line 689
    iget v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v1, :cond_0

    iget v2, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    .line 690
    add-int/2addr v2, v0

    iput v2, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 691
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 692
    iget v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 695
    :cond_0
    iget-object v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 696
    iput-object p1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 697
    iget v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 700
    iget v2, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v2, :cond_1

    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_1

    .line 701
    add-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 702
    sub-int/2addr v2, v0

    iput v2, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 703
    iget v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 719
    :cond_1
    const/4 v1, 0x4

    .local v1, "scale":I
    :goto_0
    iget v2, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v3, v1, -0x1

    and-int/2addr v2, v3

    add-int/lit8 v3, v1, -0x1

    if-ne v2, v3, :cond_5

    .line 720
    iget v2, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    if-nez v2, :cond_2

    .line 722
    iget-object v2, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 723
    .local v2, "right":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v3, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 724
    .local v3, "center":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v4, v3, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 725
    .local v4, "left":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v5, v4, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v5, v3, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 726
    iput-object v3, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 728
    iput-object v4, v3, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 729
    iput-object v2, v3, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 730
    iget v5, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    add-int/2addr v5, v0

    iput v5, v3, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    .line 731
    iput-object v3, v4, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 732
    iput-object v3, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 733
    .end local v2    # "right":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v3    # "center":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v4    # "left":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    if-ne v2, v0, :cond_3

    .line 735
    iget-object v2, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 736
    .restart local v2    # "right":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v4, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 737
    .local v4, "center":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iput-object v4, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 739
    iput-object v2, v4, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 740
    iget v5, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    add-int/2addr v5, v0

    iput v5, v4, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    .line 741
    iput-object v4, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 742
    iput v3, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .end local v2    # "right":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v4    # "center":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    goto :goto_1

    .line 743
    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 744
    iput v3, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    goto :goto_2

    .line 743
    :cond_4
    :goto_1
    nop

    .line 719
    :goto_2
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 747
    .end local v1    # "scale":I
    :cond_5
    return-void
.end method

.method reset(I)V
    .locals 2
    .param p1, "targetSize"    # I

    .line 677
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;, "Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    .line 678
    .local v0, "treeCapacity":I
    sub-int v1, v0, p1

    iput v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 679
    const/4 v1, 0x0

    iput v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 680
    iput v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 681
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 682
    return-void
.end method

.method root()Lcom/squareup/moshi/LinkedHashTreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 750
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;, "Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 751
    .local v0, "stackTop":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    if-nez v1, :cond_0

    .line 754
    return-object v0

    .line 752
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
