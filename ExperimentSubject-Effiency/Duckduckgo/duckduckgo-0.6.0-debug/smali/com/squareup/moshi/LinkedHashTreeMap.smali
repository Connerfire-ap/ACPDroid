.class final Lcom/squareup/moshi/LinkedHashTreeMap;
.super Ljava/util/AbstractMap;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/moshi/LinkedHashTreeMap$KeySet;,
        Lcom/squareup/moshi/LinkedHashTreeMap$EntrySet;,
        Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;,
        Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;,
        Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;,
        Lcom/squareup/moshi/LinkedHashTreeMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Lcom/squareup/moshi/LinkedHashTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/LinkedHashTreeMap<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lcom/squareup/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lcom/squareup/moshi/LinkedHashTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/LinkedHashTreeMap<",
            "TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field size:I

.field table:[Lcom/squareup/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    nop

    .line 41
    new-instance v0, Lcom/squareup/moshi/LinkedHashTreeMap$1;

    invoke-direct {v0}, Lcom/squareup/moshi/LinkedHashTreeMap$1;-><init>()V

    sput-object v0, Lcom/squareup/moshi/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/squareup/moshi/LinkedHashTreeMap;-><init>(Ljava/util/Comparator;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->size:I

    .line 51
    iput v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->modCount:I

    .line 71
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/squareup/moshi/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    :goto_0
    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    .line 74
    new-instance v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    invoke-direct {v0}, Lcom/squareup/moshi/LinkedHashTreeMap$Node;-><init>()V

    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->header:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->table:[Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 76
    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->threshold:I

    .line 77
    return-void
.end method

.method private doubleCapacity()V
    .locals 2

    .line 556
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->table:[Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    invoke-static {v0}, Lcom/squareup/moshi/LinkedHashTreeMap;->doubleCapacity([Lcom/squareup/moshi/LinkedHashTreeMap$Node;)[Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->table:[Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 557
    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->threshold:I

    .line 558
    return-void
.end method

.method static doubleCapacity([Lcom/squareup/moshi/LinkedHashTreeMap$Node;)[Lcom/squareup/moshi/LinkedHashTreeMap$Node;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;)[",
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 566
    .local p0, "oldTable":[Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "[Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    array-length v0, p0

    .line 568
    .local v0, "oldCapacity":I
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 569
    .local v1, "newTable":[Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "[Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    new-instance v2, Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;

    invoke-direct {v2}, Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;-><init>()V

    .line 570
    .local v2, "iterator":Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;, "Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    new-instance v3, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v3}, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;-><init>()V

    .line 571
    .local v3, "leftBuilder":Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;, "Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    new-instance v4, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v4}, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;-><init>()V

    .line 574
    .local v4, "rightBuilder":Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;, "Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_7

    .line 575
    aget-object v6, p0, v5

    .line 576
    .local v6, "root":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    if-nez v6, :cond_0

    .line 577
    goto :goto_4

    .line 581
    :cond_0
    invoke-virtual {v2, v6}, Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;->reset(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    .line 582
    const/4 v7, 0x0

    .line 583
    .local v7, "leftSize":I
    const/4 v8, 0x0

    .line 584
    .local v8, "rightSize":I
    :goto_1
    invoke-virtual {v2}, Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;->next()Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object v9

    move-object v10, v9

    .local v10, "node":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v9, :cond_2

    .line 585
    iget v9, v10, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v9, v0

    if-nez v9, :cond_1

    .line 586
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 588
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 593
    .end local v10    # "node":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_2
    invoke-virtual {v3, v7}, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    .line 594
    invoke-virtual {v4, v8}, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    .line 595
    invoke-virtual {v2, v6}, Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;->reset(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    .line 596
    :goto_2
    invoke-virtual {v2}, Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;->next()Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object v9

    move-object v10, v9

    .restart local v10    # "node":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v9, :cond_4

    .line 597
    iget v9, v10, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v9, v0

    if-nez v9, :cond_3

    .line 598
    invoke-virtual {v3, v10}, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->add(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    goto :goto_2

    .line 600
    :cond_3
    invoke-virtual {v4, v10}, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->add(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    goto :goto_2

    .line 605
    .end local v10    # "node":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_4
    const/4 v9, 0x0

    if-lez v7, :cond_5

    invoke-virtual {v3}, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->root()Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object v10

    goto :goto_3

    :cond_5
    move-object v10, v9

    :goto_3
    aput-object v10, v1, v5

    .line 606
    add-int v10, v5, v0

    if-lez v8, :cond_6

    invoke-virtual {v4}, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->root()Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object v9

    :cond_6
    aput-object v9, v1, v10

    .line 574
    .end local v6    # "root":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v7    # "leftSize":I
    .end local v8    # "rightSize":I
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 608
    .end local v5    # "i":I
    :cond_7
    return-object v1
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .line 222
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private rebalance(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Z)V
    .locals 13
    .param p2, "insert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 337
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "unbalanced":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    move-object v0, p1

    .local v0, "node":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_14

    .line 338
    iget-object v1, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 339
    .local v1, "left":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v2, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 340
    .local v2, "right":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v4, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 341
    .local v4, "leftHeight":I
    :goto_1
    if-eqz v2, :cond_1

    iget v5, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 343
    .local v5, "rightHeight":I
    :goto_2
    sub-int v6, v4, v5

    .line 344
    .local v6, "delta":I
    const/4 v7, -0x2

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-ne v6, v7, :cond_8

    .line 345
    iget-object v7, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 346
    .local v7, "rightLeft":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v10, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 347
    .local v10, "rightRight":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v10, :cond_2

    iget v11, v10, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    .line 348
    .local v11, "rightRightHeight":I
    :goto_3
    if-eqz v7, :cond_3

    iget v3, v7, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    .line 350
    .local v3, "rightLeftHeight":I
    :cond_3
    sub-int v12, v3, v11

    .line 351
    .local v12, "rightDelta":I
    if-eq v12, v8, :cond_6

    if-nez v12, :cond_4

    if-nez p2, :cond_4

    goto :goto_4

    .line 354
    :cond_4
    if-ne v12, v9, :cond_5

    .line 355
    invoke-direct {p0, v2}, Lcom/squareup/moshi/LinkedHashTreeMap;->rotateRight(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    .line 356
    invoke-direct {p0, v0}, Lcom/squareup/moshi/LinkedHashTreeMap;->rotateLeft(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    goto :goto_5

    .line 354
    :cond_5
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 352
    :cond_6
    :goto_4
    invoke-direct {p0, v0}, Lcom/squareup/moshi/LinkedHashTreeMap;->rotateLeft(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    .line 358
    :goto_5
    if-eqz p2, :cond_7

    .line 359
    goto :goto_b

    .line 362
    .end local v3    # "rightLeftHeight":I
    .end local v7    # "rightLeft":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v10    # "rightRight":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v11    # "rightRightHeight":I
    .end local v12    # "rightDelta":I
    :cond_7
    goto :goto_a

    :cond_8
    const/4 v7, 0x2

    if-ne v6, v7, :cond_f

    .line 363
    iget-object v7, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 364
    .local v7, "leftLeft":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v10, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 365
    .local v10, "leftRight":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v10, :cond_9

    iget v11, v10, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    goto :goto_6

    :cond_9
    const/4 v11, 0x0

    .line 366
    .local v11, "leftRightHeight":I
    :goto_6
    if-eqz v7, :cond_a

    iget v3, v7, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    .line 368
    .local v3, "leftLeftHeight":I
    :cond_a
    sub-int v12, v3, v11

    .line 369
    .local v12, "leftDelta":I
    if-eq v12, v9, :cond_d

    if-nez v12, :cond_b

    if-nez p2, :cond_b

    goto :goto_7

    .line 372
    :cond_b
    if-ne v12, v8, :cond_c

    .line 373
    invoke-direct {p0, v1}, Lcom/squareup/moshi/LinkedHashTreeMap;->rotateLeft(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    .line 374
    invoke-direct {p0, v0}, Lcom/squareup/moshi/LinkedHashTreeMap;->rotateRight(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    goto :goto_8

    .line 372
    :cond_c
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 370
    :cond_d
    :goto_7
    invoke-direct {p0, v0}, Lcom/squareup/moshi/LinkedHashTreeMap;->rotateRight(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    .line 376
    :goto_8
    if-eqz p2, :cond_e

    .line 377
    goto :goto_b

    .line 380
    .end local v3    # "leftLeftHeight":I
    .end local v7    # "leftLeft":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v10    # "leftRight":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v11    # "leftRightHeight":I
    .end local v12    # "leftDelta":I
    :cond_e
    goto :goto_a

    :cond_f
    if-nez v6, :cond_10

    .line 381
    add-int/lit8 v3, v4, 0x1

    iput v3, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    .line 382
    if-eqz p2, :cond_13

    .line 383
    goto :goto_b

    .line 387
    :cond_10
    if-eq v6, v8, :cond_12

    if-ne v6, v9, :cond_11

    goto :goto_9

    :cond_11
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 388
    :cond_12
    :goto_9
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v9

    iput v3, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    .line 389
    if-nez p2, :cond_13

    .line 390
    goto :goto_b

    .line 337
    .end local v1    # "left":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v2    # "right":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v4    # "leftHeight":I
    .end local v5    # "rightHeight":I
    .end local v6    # "delta":I
    :cond_13
    :goto_a
    iget-object v0, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto/16 :goto_0

    .line 394
    .end local v0    # "node":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_14
    :goto_b
    return-void
.end method

.method private replaceInParent(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;",
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 310
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "node":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    .local p2, "replacement":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 311
    .local v0, "parent":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 312
    if-eqz p2, :cond_0

    .line 313
    iput-object v0, p2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 316
    :cond_0
    if-eqz v0, :cond_3

    .line 317
    iget-object v1, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    if-ne v1, p1, :cond_1

    .line 318
    iput-object p2, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto :goto_0

    .line 320
    :cond_1
    iget-object v1, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    if-ne v1, p1, :cond_2

    .line 321
    iput-object p2, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto :goto_0

    .line 320
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 324
    :cond_3
    iget v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->hash:I

    iget-object v2, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->table:[Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    .line 325
    .local v1, "index":I
    aput-object p2, v2, v1

    .line 327
    .end local v1    # "index":I
    :goto_0
    return-void
.end method

.method private rotateLeft(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 400
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "root":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 401
    .local v0, "left":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 402
    .local v1, "pivot":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v2, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 403
    .local v2, "pivotLeft":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v3, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 406
    .local v3, "pivotRight":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iput-object v2, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 407
    if-eqz v2, :cond_0

    .line 408
    iput-object p1, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 411
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/squareup/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    .line 414
    iput-object p1, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 415
    iput-object v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 418
    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget v5, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget v6, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    .line 420
    iget v5, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    if-eqz v3, :cond_3

    iget v4, v3, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    :cond_3
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    .line 422
    return-void
.end method

.method private rotateRight(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 428
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "root":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 429
    .local v0, "pivot":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 430
    .local v1, "right":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v2, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 431
    .local v2, "pivotLeft":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v3, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 434
    .local v3, "pivotRight":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iput-object v3, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 435
    if-eqz v3, :cond_0

    .line 436
    iput-object p1, v3, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 439
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/squareup/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    .line 442
    iput-object p1, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 443
    iput-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 446
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget v5, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v3, :cond_2

    iget v6, v3, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    .line 448
    iget v5, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    if-eqz v2, :cond_3

    iget v4, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    :cond_3
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    .line 450
    return-void
.end method

.method private static secondaryHash(I)I
    .locals 2
    .param p0, "h"    # I

    .line 233
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    .line 234
    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 857
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 103
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->table:[Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->size:I

    .line 105
    iget v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->modCount:I

    .line 108
    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->header:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 109
    .local v0, "header":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v2, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->next:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .local v2, "e":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eq v2, v0, :cond_0

    .line 110
    iget-object v3, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->next:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 111
    .local v3, "next":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iput-object v1, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->prev:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v1, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->next:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 112
    move-object v2, v3

    .line 113
    .end local v3    # "next":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    goto :goto_0

    .line 115
    .end local v2    # "e":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_0
    iput-object v0, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->prev:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v0, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->next:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 116
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 89
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/moshi/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 456
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->entrySet:Lcom/squareup/moshi/LinkedHashTreeMap$EntrySet;

    .line 457
    .local v0, "result":Lcom/squareup/moshi/LinkedHashTreeMap$EntrySet;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/squareup/moshi/LinkedHashTreeMap$EntrySet;

    invoke-direct {v1, p0}, Lcom/squareup/moshi/LinkedHashTreeMap$EntrySet;-><init>(Lcom/squareup/moshi/LinkedHashTreeMap;)V

    iput-object v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->entrySet:Lcom/squareup/moshi/LinkedHashTreeMap$EntrySet;

    :goto_0
    return-object v1
.end method

.method find(Ljava/lang/Object;Z)Lcom/squareup/moshi/LinkedHashTreeMap$Node;
    .locals 17
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v8, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    .line 131
    .local v8, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v9, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->table:[Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 132
    .local v9, "table":[Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "[Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/squareup/moshi/LinkedHashTreeMap;->secondaryHash(I)I

    move-result v10

    .line 133
    .local v10, "hash":I
    array-length v1, v9

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    and-int v12, v10, v1

    .line 134
    .local v12, "index":I
    aget-object v1, v9, v12

    .line 135
    .local v1, "nearest":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    .line 137
    .local v2, "comparison":I
    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 140
    sget-object v4, Lcom/squareup/moshi/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v8, v4, :cond_0

    move-object v4, v7

    check-cast v4, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 145
    .local v4, "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :goto_0
    if-eqz v4, :cond_1

    iget-object v5, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    .line 146
    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    goto :goto_1

    :cond_1
    iget-object v5, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    .line 147
    invoke-interface {v8, v7, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    :goto_1
    move v2, v5

    .line 150
    if-nez v2, :cond_2

    .line 151
    return-object v1

    .line 155
    :cond_2
    if-gez v2, :cond_3

    iget-object v5, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto :goto_2

    :cond_3
    iget-object v5, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 156
    .local v5, "child":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_2
    if-nez v5, :cond_4

    .line 157
    move-object v13, v1

    move v14, v2

    goto :goto_3

    .line 160
    :cond_4
    move-object v1, v5

    .line 161
    .end local v5    # "child":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    goto :goto_0

    .line 137
    .end local v4    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_5
    move-object v13, v1

    move v14, v2

    .line 165
    .end local v1    # "nearest":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v2    # "comparison":I
    .local v13, "nearest":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    .local v14, "comparison":I
    :goto_3
    if-nez p2, :cond_6

    .line 166
    return-object v3

    .line 170
    :cond_6
    iget-object v15, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->header:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 172
    .local v15, "header":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    if-nez v13, :cond_9

    .line 174
    sget-object v1, Lcom/squareup/moshi/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v8, v1, :cond_8

    instance-of v1, v7, Ljava/lang/Comparable;

    if-eqz v1, :cond_7

    goto :goto_4

    .line 175
    :cond_7
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not Comparable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_8
    :goto_4
    new-instance v16, Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v6, v15, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->prev:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-object/from16 v1, v16

    move-object v2, v13

    move-object/from16 v3, p1

    move v4, v10

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lcom/squareup/moshi/LinkedHashTreeMap$Node;-><init>(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/squareup/moshi/LinkedHashTreeMap$Node;Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    .line 178
    .local v1, "created":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    aput-object v1, v9, v12

    goto :goto_6

    .line 180
    .end local v1    # "created":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_9
    new-instance v16, Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v6, v15, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->prev:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-object/from16 v1, v16

    move-object v2, v13

    move-object/from16 v3, p1

    move v4, v10

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lcom/squareup/moshi/LinkedHashTreeMap$Node;-><init>(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/squareup/moshi/LinkedHashTreeMap$Node;Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    .line 181
    .restart local v1    # "created":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    if-gez v14, :cond_a

    .line 182
    iput-object v1, v13, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto :goto_5

    .line 184
    :cond_a
    iput-object v1, v13, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 186
    :goto_5
    invoke-direct {v0, v13, v11}, Lcom/squareup/moshi/LinkedHashTreeMap;->rebalance(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Z)V

    .line 189
    :goto_6
    iget v2, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->size:I

    iget v3, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->threshold:I

    if-le v2, v3, :cond_b

    .line 190
    invoke-direct/range {p0 .. p0}, Lcom/squareup/moshi/LinkedHashTreeMap;->doubleCapacity()V

    .line 192
    :cond_b
    iget v2, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->modCount:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->modCount:I

    .line 194
    return-object v1
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lcom/squareup/moshi/LinkedHashTreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 217
    .local v0, "mine":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/squareup/moshi/LinkedHashTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 218
    .local v1, "valuesEqual":Z
    :goto_0
    if-eqz v1, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method findByObject(Ljava/lang/Object;)Lcom/squareup/moshi/LinkedHashTreeMap$Node;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/squareup/moshi/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/ClassCastException;
    return-object v0

    .line 200
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/moshi/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 85
    .local v0, "node":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 461
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->keySet:Lcom/squareup/moshi/LinkedHashTreeMap$KeySet;

    .line 462
    .local v0, "result":Lcom/squareup/moshi/LinkedHashTreeMap$KeySet;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>.KeySet;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet;

    invoke-direct {v1, p0}, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet;-><init>(Lcom/squareup/moshi/LinkedHashTreeMap;)V

    iput-object v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->keySet:Lcom/squareup/moshi/LinkedHashTreeMap$KeySet;

    :goto_0
    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/squareup/moshi/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 97
    .local v0, "created":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 98
    .local v1, "result":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 99
    return-object v1

    .line 94
    .end local v0    # "created":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v1    # "result":Ljava/lang/Object;, "TV;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/moshi/LinkedHashTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 120
    .local v0, "node":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method removeInternal(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Z)V
    .locals 7
    .param p2, "unlink"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 244
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "node":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 245
    iget-object v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->prev:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v2, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->next:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v2, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->next:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 246
    iget-object v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->next:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v2, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->prev:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v2, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->prev:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 247
    iput-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->prev:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->next:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 250
    :cond_0
    iget-object v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 251
    .local v1, "left":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v2, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 252
    .local v2, "right":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v3, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 253
    .local v3, "originalParent":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v4, 0x0

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 264
    iget v5, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    iget v6, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    if-le v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->last()Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->first()Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object v5

    .line 265
    .local v5, "adjacent":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    invoke-virtual {p0, v5, v4}, Lcom/squareup/moshi/LinkedHashTreeMap;->removeInternal(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Z)V

    .line 267
    const/4 v4, 0x0

    .line 268
    .local v4, "leftHeight":I
    iget-object v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 269
    if-eqz v1, :cond_2

    .line 270
    iget v4, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    .line 271
    iput-object v1, v5, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 272
    iput-object v5, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 273
    iput-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 275
    :cond_2
    const/4 v6, 0x0

    .line 276
    .local v6, "rightHeight":I
    iget-object v2, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 277
    if-eqz v2, :cond_3

    .line 278
    iget v6, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    .line 279
    iput-object v2, v5, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 280
    iput-object v5, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->parent:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 281
    iput-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 283
    :cond_3
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v5, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->height:I

    .line 284
    invoke-direct {p0, p1, v5}, Lcom/squareup/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    .line 285
    return-void

    .line 286
    .end local v4    # "leftHeight":I
    .end local v5    # "adjacent":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v6    # "rightHeight":I
    :cond_4
    if-eqz v1, :cond_5

    .line 287
    invoke-direct {p0, p1, v1}, Lcom/squareup/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    .line 288
    iput-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->left:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto :goto_1

    .line 289
    :cond_5
    if-eqz v2, :cond_6

    .line 290
    invoke-direct {p0, p1, v2}, Lcom/squareup/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    .line 291
    iput-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->right:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto :goto_1

    .line 293
    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/squareup/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    .line 296
    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/squareup/moshi/LinkedHashTreeMap;->rebalance(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Z)V

    .line 297
    iget v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->size:I

    .line 298
    iget v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->modCount:I

    .line 299
    return-void
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lcom/squareup/moshi/LinkedHashTreeMap$Node;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 302
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/moshi/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 303
    .local v0, "node":Lcom/squareup/moshi/LinkedHashTreeMap$Node;, "Lcom/squareup/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 304
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/squareup/moshi/LinkedHashTreeMap;->removeInternal(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Z)V

    .line 306
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 80
    .local p0, "this":Lcom/squareup/moshi/LinkedHashTreeMap;, "Lcom/squareup/moshi/LinkedHashTreeMap<TK;TV;>;"
    iget v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->size:I

    return v0
.end method
