.class final Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;
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
    name = "SizeBoundReplayBuffer"
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
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field volatile head:Lio/reactivex/processors/ReplayProcessor$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field final maxSize:I

.field size:I

.field tail:Lio/reactivex/processors/ReplayProcessor$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$Node<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .line 720
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    const-string v0, "maxSize"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->maxSize:I

    .line 722
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/processors/ReplayProcessor$Node;-><init>(Ljava/lang/Object;)V

    .line 723
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 724
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 725
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .line 755
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    .line 756
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 749
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    .line 751
    return-void
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .line 765
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 770
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 772
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$Node;

    .line 773
    .local v1, "n":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    if-nez v1, :cond_0

    .line 774
    iget-object v2, v0, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    return-object v2

    .line 776
    :cond_0
    move-object v0, v1

    .line 777
    .end local v1    # "n":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    goto :goto_0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 783
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .line 784
    .local v0, "s":I
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 785
    .local v1, "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    move-object v2, v1

    .line 787
    .local v2, "h0":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    :goto_0
    invoke-virtual {v2}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$Node;

    .line 788
    .local v3, "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    if-nez v3, :cond_3

    .line 789
    nop

    .line 794
    .end local v3    # "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    array-length v3, p1

    if-ge v3, v0, :cond_0

    .line 795
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object p1, v3

    check-cast p1, [Ljava/lang/Object;

    .line 798
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 799
    invoke-virtual {v1}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$Node;

    .line 800
    iget-object v4, v1, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 798
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 803
    .end local v3    # "j":I
    :cond_1
    array-length v3, p1

    if-le v3, v0, :cond_2

    .line 804
    const/4 v3, 0x0

    aput-object v3, p1, v0

    .line 806
    :cond_2
    return-object p1

    .line 791
    .local v3, "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 792
    move-object v2, v3

    .line 793
    .end local v3    # "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    .line 760
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    return v0
.end method

.method public next(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 737
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$Node;

    invoke-direct {v0, p1}, Lio/reactivex/processors/ReplayProcessor$Node;-><init>(Ljava/lang/Object;)V

    .line 738
    .local v0, "n":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 740
    .local v1, "t":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 741
    iget v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    .line 742
    invoke-virtual {v1, v0}, Lio/reactivex/processors/ReplayProcessor$Node;->set(Ljava/lang/Object;)V

    .line 744
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->trim()V

    .line 745
    return-void
.end method

.method public replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 812
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    .local p1, "rs":Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    return-void

    .line 816
    :cond_0
    const/4 v0, 0x1

    .line 817
    .local v0, "missed":I
    iget-object v1, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 819
    .local v1, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    check-cast v2, Lio/reactivex/processors/ReplayProcessor$Node;

    .line 820
    .local v2, "index":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    if-nez v2, :cond_1

    .line 821
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 824
    :cond_1
    iget-wide v3, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->emitted:J

    .line 828
    .local v3, "e":J
    :goto_0
    iget-object v5, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    .line 830
    .local v5, "r":J
    :goto_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    cmp-long v9, v3, v5

    if-eqz v9, :cond_7

    .line 831
    iget-boolean v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    if-eqz v9, :cond_2

    .line 832
    iput-object v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 833
    return-void

    .line 836
    :cond_2
    iget-boolean v9, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    .line 837
    .local v9, "d":Z
    invoke-virtual {v2}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/reactivex/processors/ReplayProcessor$Node;

    .line 838
    .local v10, "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    if-nez v10, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 840
    .local v11, "empty":Z
    :goto_2
    if-eqz v9, :cond_5

    if-eqz v11, :cond_5

    .line 841
    iput-object v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 842
    iput-boolean v7, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    .line 843
    iget-object v7, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    .line 844
    .local v7, "ex":Ljava/lang/Throwable;
    if-nez v7, :cond_4

    .line 845
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_3

    .line 847
    :cond_4
    invoke-interface {v1, v7}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 849
    :goto_3
    return-void

    .line 852
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_5
    if-eqz v11, :cond_6

    .line 853
    goto :goto_4

    .line 856
    :cond_6
    iget-object v7, v10, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    invoke-interface {v1, v7}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 857
    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    .line 858
    move-object v2, v10

    .line 859
    .end local v9    # "d":Z
    .end local v10    # "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    .end local v11    # "empty":Z
    goto :goto_1

    .line 861
    :cond_7
    :goto_4
    cmp-long v9, v3, v5

    if-nez v9, :cond_a

    .line 862
    iget-boolean v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    if-eqz v9, :cond_8

    .line 863
    iput-object v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 864
    return-void

    .line 867
    :cond_8
    iget-boolean v9, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    .line 869
    .restart local v9    # "d":Z
    if-eqz v9, :cond_a

    invoke-virtual {v2}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_a

    .line 870
    iput-object v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 871
    iput-boolean v7, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    .line 872
    iget-object v7, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    .line 873
    .restart local v7    # "ex":Ljava/lang/Throwable;
    if-nez v7, :cond_9

    .line 874
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_5

    .line 876
    :cond_9
    invoke-interface {v1, v7}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 878
    :goto_5
    return-void

    .line 882
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v9    # "d":Z
    :cond_a
    iput-object v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 883
    iput-wide v3, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->emitted:J

    .line 885
    neg-int v7, v0

    invoke-virtual {p1, v7}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->addAndGet(I)I

    move-result v0

    .line 886
    if-nez v0, :cond_b

    .line 887
    nop

    .line 890
    .end local v5    # "r":J
    return-void

    .line 889
    :cond_b
    goto :goto_0
.end method

.method public size()I
    .locals 3

    .line 894
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    const/4 v0, 0x0

    .line 895
    .local v0, "s":I
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 896
    .local v1, "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    :goto_0
    const v2, 0x7fffffff

    if-eq v0, v2, :cond_1

    .line 897
    invoke-virtual {v1}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/processors/ReplayProcessor$Node;

    .line 898
    .local v2, "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    if-nez v2, :cond_0

    .line 899
    goto :goto_1

    .line 901
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 902
    move-object v1, v2

    .line 903
    .end local v2    # "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    goto :goto_0

    .line 905
    :cond_1
    :goto_1
    return v0
.end method

.method trim()V
    .locals 2

    .line 728
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->maxSize:I

    if-le v0, v1, :cond_0

    .line 729
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    .line 730
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 731
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$Node;

    iput-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 733
    .end local v0    # "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    :cond_0
    return-void
.end method
