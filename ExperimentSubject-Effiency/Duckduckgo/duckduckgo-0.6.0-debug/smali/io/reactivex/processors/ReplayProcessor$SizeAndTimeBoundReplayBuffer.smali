.class final Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;
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
    name = "SizeAndTimeBoundReplayBuffer"
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

.field volatile head:Lio/reactivex/processors/ReplayProcessor$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "TT;>;"
        }
    .end annotation
.end field

.field final maxAge:J

.field final maxSize:I

.field final scheduler:Lio/reactivex/Scheduler;

.field size:I

.field tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "TT;>;"
        }
    .end annotation
.end field

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 4
    .param p1, "maxSize"    # I
    .param p2, "maxAge"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lio/reactivex/Scheduler;

    .line 926
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    const-string v0, "maxSize"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxSize:I

    .line 928
    const-string v0, "maxAge"

    invoke-static {p2, p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    .line 929
    const-string v0, "unit is null"

    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    .line 930
    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    .line 931
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 932
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 933
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 934
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .line 1005
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->trimFinal()V

    .line 1006
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    .line 1007
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 998
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->trimFinal()V

    .line 999
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    .line 1001
    return-void
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .line 1179
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "TT;>;"
        }
    .end annotation

    .line 1060
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1062
    .local v0, "index":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-wide v3, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v1, v3

    .line 1063
    .local v1, "limit":J
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1064
    .local v3, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :goto_0
    if-eqz v3, :cond_1

    .line 1065
    iget-wide v4, v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    .line 1066
    .local v4, "ts":J
    cmp-long v6, v4, v1

    if-lez v6, :cond_0

    .line 1067
    goto :goto_1

    .line 1069
    :cond_0
    move-object v0, v3

    .line 1070
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1071
    .end local v4    # "ts":J
    goto :goto_0

    .line 1072
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1011
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1014
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1015
    .local v1, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    if-nez v1, :cond_1

    .line 1016
    nop

    .line 1021
    .end local v1    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-wide v3, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v1, v3

    .line 1022
    .local v1, "limit":J
    iget-wide v3, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    .line 1023
    const/4 v3, 0x0

    return-object v3

    .line 1026
    :cond_0
    iget-object v3, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    return-object v3

    .line 1018
    .local v1, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :cond_1
    move-object v0, v1

    .line 1019
    .end local v1    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    goto :goto_0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1032
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;

    move-result-object v0

    .line 1033
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    invoke-virtual {p0, v0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/processors/ReplayProcessor$TimedNode;)I

    move-result v1

    .line 1035
    .local v1, "s":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1036
    array-length v3, p1

    if-eqz v3, :cond_3

    .line 1037
    const/4 v3, 0x0

    aput-object v2, p1, v3

    goto :goto_1

    .line 1040
    :cond_0
    array-length v3, p1

    if-ge v3, v1, :cond_1

    .line 1041
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object p1, v3

    check-cast p1, [Ljava/lang/Object;

    .line 1044
    :cond_1
    const/4 v3, 0x0

    .line 1045
    .local v3, "i":I
    :goto_0
    if-eq v3, v1, :cond_2

    .line 1046
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1047
    .local v4, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    iget-object v5, v4, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    aput-object v5, p1, v3

    .line 1048
    add-int/lit8 v3, v3, 0x1

    .line 1049
    move-object v0, v4

    .line 1050
    .end local v4    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    goto :goto_0

    .line 1051
    :cond_2
    array-length v4, p1

    if-le v4, v1, :cond_3

    .line 1052
    aput-object v2, p1, v1

    .line 1056
    .end local v3    # "i":I
    :cond_3
    :goto_1
    return-object p1
.end method

.method public isDone()Z
    .locals 1

    .line 1184
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    return v0
.end method

.method public next(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 986
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 987
    .local v0, "n":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 989
    .local v1, "t":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 990
    iget v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    .line 991
    invoke-virtual {v1, v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->set(Ljava/lang/Object;)V

    .line 993
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->trim()V

    .line 994
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

    .line 1078
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "rs":Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    return-void

    .line 1082
    :cond_0
    const/4 v0, 0x1

    .line 1083
    .local v0, "missed":I
    iget-object v1, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 1085
    .local v1, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    check-cast v2, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1086
    .local v2, "index":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    if-nez v2, :cond_1

    .line 1087
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;

    move-result-object v2

    .line 1090
    :cond_1
    iget-wide v3, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->emitted:J

    .line 1094
    .local v3, "e":J
    :goto_0
    iget-object v5, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    .line 1096
    .local v5, "r":J
    :goto_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    cmp-long v9, v3, v5

    if-eqz v9, :cond_7

    .line 1097
    iget-boolean v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    if-eqz v9, :cond_2

    .line 1098
    iput-object v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 1099
    return-void

    .line 1102
    :cond_2
    iget-boolean v9, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    .line 1103
    .local v9, "d":Z
    invoke-virtual {v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1104
    .local v10, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    if-nez v10, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 1106
    .local v11, "empty":Z
    :goto_2
    if-eqz v9, :cond_5

    if-eqz v11, :cond_5

    .line 1107
    iput-object v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 1108
    iput-boolean v7, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    .line 1109
    iget-object v7, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    .line 1110
    .local v7, "ex":Ljava/lang/Throwable;
    if-nez v7, :cond_4

    .line 1111
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_3

    .line 1113
    :cond_4
    invoke-interface {v1, v7}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 1115
    :goto_3
    return-void

    .line 1118
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_5
    if-eqz v11, :cond_6

    .line 1119
    goto :goto_4

    .line 1122
    :cond_6
    iget-object v7, v10, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    invoke-interface {v1, v7}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 1123
    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    .line 1124
    move-object v2, v10

    .line 1125
    .end local v9    # "d":Z
    .end local v10    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    .end local v11    # "empty":Z
    goto :goto_1

    .line 1127
    :cond_7
    :goto_4
    cmp-long v9, v3, v5

    if-nez v9, :cond_a

    .line 1128
    iget-boolean v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    if-eqz v9, :cond_8

    .line 1129
    iput-object v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 1130
    return-void

    .line 1133
    :cond_8
    iget-boolean v9, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    .line 1135
    .restart local v9    # "d":Z
    if-eqz v9, :cond_a

    invoke-virtual {v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_a

    .line 1136
    iput-object v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 1137
    iput-boolean v7, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    .line 1138
    iget-object v7, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    .line 1139
    .restart local v7    # "ex":Ljava/lang/Throwable;
    if-nez v7, :cond_9

    .line 1140
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_5

    .line 1142
    :cond_9
    invoke-interface {v1, v7}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 1144
    :goto_5
    return-void

    .line 1148
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v9    # "d":Z
    :cond_a
    iput-object v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 1149
    iput-wide v3, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->emitted:J

    .line 1151
    neg-int v7, v0

    invoke-virtual {p1, v7}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->addAndGet(I)I

    move-result v0

    .line 1152
    if-nez v0, :cond_b

    .line 1153
    nop

    .line 1156
    .end local v5    # "r":J
    return-void

    .line 1155
    :cond_b
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .line 1160
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/processors/ReplayProcessor$TimedNode;)I

    move-result v0

    return v0
.end method

.method size(Lio/reactivex/processors/ReplayProcessor$TimedNode;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "TT;>;)I"
        }
    .end annotation

    .line 1164
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    const/4 v0, 0x0

    .line 1165
    .local v0, "s":I
    :goto_0
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 1166
    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1167
    .local v1, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    if-nez v1, :cond_0

    .line 1168
    goto :goto_1

    .line 1170
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1171
    move-object p1, v1

    .line 1172
    .end local v1    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    goto :goto_0

    .line 1174
    :cond_1
    :goto_1
    return v0
.end method

.method trim()V
    .locals 7

    .line 937
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxSize:I

    if-le v0, v1, :cond_0

    .line 938
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    .line 939
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 940
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    iput-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 942
    .end local v0    # "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 944
    .local v0, "limit":J
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 947
    .local v2, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :goto_0
    invoke-virtual {v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 948
    .local v3, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    if-nez v3, :cond_1

    .line 949
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 950
    goto :goto_1

    .line 953
    :cond_1
    iget-wide v4, v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    .line 954
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 955
    nop

    .line 961
    .end local v3    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :goto_1
    return-void

    .line 958
    .restart local v3    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :cond_2
    move-object v2, v3

    .line 959
    .end local v3    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    goto :goto_0
.end method

.method trimFinal()V
    .locals 7

    .line 964
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 966
    .local v0, "limit":J
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 969
    .local v2, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :goto_0
    invoke-virtual {v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 970
    .local v3, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    if-nez v3, :cond_0

    .line 971
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 972
    goto :goto_1

    .line 975
    :cond_0
    iget-wide v4, v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_1

    .line 976
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 977
    nop

    .line 982
    .end local v3    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :goto_1
    return-void

    .line 980
    .restart local v3    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :cond_1
    move-object v2, v3

    .line 981
    .end local v3    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    goto :goto_0
.end method
