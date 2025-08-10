.class Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AvlIterator"
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
.field private stackTop:Lcom/squareup/moshi/LinkedHashTreeMap$Node;
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

    .line 620
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;, "Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()Lcom/squareup/moshi/LinkedHashTreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 634
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;, "Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 635
    .local v0, "stackTop":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 636
    return-object v1

    .line 638
    :cond_0
    move-object v2, v0

    .line 639
    .local v2, "result":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 640
    iput-object v1, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 641
    iget-object v1, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .local v1, "n":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 642
    iput-object v0, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 643
    move-object v0, v1

    .line 641
    iget-object v1, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto :goto_0

    .line 645
    .end local v1    # "n":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_1
    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 646
    return-object v2
.end method

.method reset(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 625
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;, "Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    .local p1, "root":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    .line 626
    .local v0, "stackTop":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    move-object v1, p1

    .local v1, "n":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 627
    iput-object v0, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 628
    move-object v0, v1

    .line 626
    iget-object v1, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto :goto_0

    .line 630
    .end local v1    # "n":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_0
    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 631
    return-void
.end method
