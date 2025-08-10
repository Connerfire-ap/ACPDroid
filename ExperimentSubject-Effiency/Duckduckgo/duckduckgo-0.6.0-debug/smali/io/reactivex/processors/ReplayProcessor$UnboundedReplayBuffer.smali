.class final Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;
.super Ljava/lang/Object;
.source "ReplayProcessor.java"

# interfaces
.implements Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/processors/ReplayProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnboundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/processors/ReplayProcessor$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field volatile size:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "capacityHint"    # I

    .line 526
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    .line 528
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .line 544
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->done:Z

    .line 545
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 538
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->error:Ljava/lang/Throwable;

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->done:Z

    .line 540
    return-void
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .line 679
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 549
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    .line 550
    .local v0, "s":I
    if-nez v0, :cond_0

    .line 551
    const/4 v1, 0x0

    return-object v1

    .line 553
    :cond_0
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 559
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    .line 560
    .local v0, "s":I
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 561
    array-length v2, p1

    if-eqz v2, :cond_0

    .line 562
    const/4 v2, 0x0

    aput-object v1, p1, v2

    .line 564
    :cond_0
    return-object p1

    .line 566
    :cond_1
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    .line 568
    .local v2, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    array-length v3, p1

    if-ge v3, v0, :cond_2

    .line 569
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object p1, v3

    check-cast p1, [Ljava/lang/Object;

    .line 571
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 572
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, v3

    .line 571
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 574
    .end local v3    # "i":I
    :cond_3
    array-length v3, p1

    if-le v3, v0, :cond_4

    .line 575
    aput-object v1, p1, v0

    .line 578
    :cond_4
    return-object p1
.end method

.method public isDone()Z
    .locals 1

    .line 674
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->done:Z

    return v0
.end method

.method public next(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 532
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    .line 534
    return-void
.end method

.method public replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 583
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    .local p1, "rs":Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    return-void

    .line 587
    :cond_0
    const/4 v0, 0x1

    .line 588
    .local v0, "missed":I
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    .line 589
    .local v1, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 591
    .local v2, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v3, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 593
    .local v3, "indexObject":Ljava/lang/Integer;
    if-eqz v3, :cond_1

    .line 594
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, "index":I
    goto :goto_0

    .line 596
    .end local v4    # "index":I
    :cond_1
    const/4 v4, 0x0

    .line 597
    .restart local v4    # "index":I
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 599
    :goto_0
    iget-wide v5, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->emitted:J

    .line 603
    .local v5, "e":J
    :goto_1
    iget-object v7, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    .line 605
    .local v7, "r":J
    :goto_2
    const/4 v9, 0x1

    const/4 v10, 0x0

    cmp-long v11, v5, v7

    if-eqz v11, :cond_6

    .line 606
    iget-boolean v11, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    if-eqz v11, :cond_2

    .line 607
    iput-object v10, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 608
    return-void

    .line 611
    :cond_2
    iget-boolean v11, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->done:Z

    .line 612
    .local v11, "d":Z
    iget v12, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    .line 614
    .local v12, "s":I
    if-eqz v11, :cond_4

    if-ne v4, v12, :cond_4

    .line 615
    iput-object v10, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 616
    iput-boolean v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    .line 617
    iget-object v9, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->error:Ljava/lang/Throwable;

    .line 618
    .local v9, "ex":Ljava/lang/Throwable;
    if-nez v9, :cond_3

    .line 619
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_3

    .line 621
    :cond_3
    invoke-interface {v2, v9}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 623
    :goto_3
    return-void

    .line 626
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_4
    if-ne v4, v12, :cond_5

    .line 627
    goto :goto_4

    .line 630
    :cond_5
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 632
    add-int/lit8 v4, v4, 0x1

    .line 633
    const-wide/16 v9, 0x1

    add-long/2addr v5, v9

    .line 634
    .end local v11    # "d":Z
    .end local v12    # "s":I
    goto :goto_2

    .line 636
    :cond_6
    :goto_4
    cmp-long v11, v5, v7

    if-nez v11, :cond_9

    .line 637
    iget-boolean v11, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    if-eqz v11, :cond_7

    .line 638
    iput-object v10, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 639
    return-void

    .line 642
    :cond_7
    iget-boolean v11, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->done:Z

    .line 643
    .restart local v11    # "d":Z
    iget v12, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    .line 645
    .restart local v12    # "s":I
    if-eqz v11, :cond_9

    if-ne v4, v12, :cond_9

    .line 646
    iput-object v10, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 647
    iput-boolean v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    .line 648
    iget-object v9, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->error:Ljava/lang/Throwable;

    .line 649
    .restart local v9    # "ex":Ljava/lang/Throwable;
    if-nez v9, :cond_8

    .line 650
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_5

    .line 652
    :cond_8
    invoke-interface {v2, v9}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 654
    :goto_5
    return-void

    .line 658
    .end local v9    # "ex":Ljava/lang/Throwable;
    .end local v11    # "d":Z
    .end local v12    # "s":I
    :cond_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 659
    iput-wide v5, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->emitted:J

    .line 660
    neg-int v9, v0

    invoke-virtual {p1, v9}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->addAndGet(I)I

    move-result v0

    .line 661
    if-nez v0, :cond_a

    .line 662
    nop

    .line 665
    .end local v7    # "r":J
    return-void

    .line 664
    :cond_a
    goto :goto_1
.end method

.method public size()I
    .locals 1

    .line 669
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    return v0
.end method
