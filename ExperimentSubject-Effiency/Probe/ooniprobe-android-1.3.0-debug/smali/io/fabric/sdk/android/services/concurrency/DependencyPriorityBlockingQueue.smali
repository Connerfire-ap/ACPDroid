.class public Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;
.super Ljava/util/concurrent/PriorityBlockingQueue;
.source "DependencyPriorityBlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/fabric/sdk/android/services/concurrency/Dependency;",
        ":",
        "Lio/fabric/sdk/android/services/concurrency/Task;",
        ":",
        "Lio/fabric/sdk/android/services/concurrency/PriorityProvider;",
        ">",
        "Ljava/util/concurrent/PriorityBlockingQueue<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final PEEK:I = 0x1

.field static final POLL:I = 0x2

.field static final POLL_WITH_TIMEOUT:I = 0x3

.field static final TAKE:I


# instance fields
.field final blockedQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->blockedQueue:Ljava/util/Queue;

    .line 59
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 60
    return-void
.end method


# virtual methods
.method canProcess(Lio/fabric/sdk/android/services/concurrency/Dependency;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 248
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    .local p1, "result":Lio/fabric/sdk/android/services/concurrency/Dependency;, "TE;"
    invoke-interface {p1}, Lio/fabric/sdk/android/services/concurrency/Dependency;->areDependenciesMet()Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    .line 165
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 166
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->blockedQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 167
    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 170
    nop

    .line 171
    return-void

    .line 169
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method concatenate([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 272
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    .local p1, "arr1":[Ljava/lang/Object;, "[TT;"
    .local p2, "arr2":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    .line 273
    .local v0, "arr1Len":I
    array-length v1, p2

    .line 276
    .local v1, "arr2Len":I
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 278
    .local v2, "C":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    invoke-static {p2, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    return-object v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 155
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 156
    invoke-super {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->blockedQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 158
    :goto_1
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    .line 126
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 127
    invoke-super {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->drainTo(Ljava/util/Collection;)I

    move-result v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->blockedQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    .local v0, "numberOfItems":I
    :goto_0
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->blockedQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->blockedQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 131
    :cond_0
    nop

    .line 133
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .end local v0    # "numberOfItems":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 2
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 140
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 141
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/PriorityBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    .line 142
    .local v0, "numberOfItems":I
    :goto_0
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->blockedQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-gt v0, p2, :cond_0

    .line 143
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->blockedQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    nop

    .line 148
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .end local v0    # "numberOfItems":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method get(ILjava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lio/fabric/sdk/android/services/concurrency/Dependency;
    .locals 2
    .param p1, "operation"    # I
    .param p2, "time"    # Ljava/lang/Long;
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 236
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->performOperation(ILjava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object v0

    move-object v1, v0

    .local v1, "result":Lio/fabric/sdk/android/services/concurrency/Dependency;, "TE;"
    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {p0, v1}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->canProcess(Lio/fabric/sdk/android/services/concurrency/Dependency;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    goto :goto_1

    .line 240
    :cond_0
    invoke-virtual {p0, p1, v1}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->offerBlockedResult(ILio/fabric/sdk/android/services/concurrency/Dependency;)Z

    goto :goto_0

    .line 244
    :cond_1
    :goto_1
    return-object v1
.end method

.method offerBlockedResult(ILio/fabric/sdk/android/services/concurrency/Dependency;)Z
    .locals 2
    .param p1, "operation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)Z"
        }
    .end annotation

    .line 224
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    .local p2, "result":Lio/fabric/sdk/android/services/concurrency/Dependency;, "TE;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 225
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 226
    invoke-super {p0, p2}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->blockedQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public peek()Lio/fabric/sdk/android/services/concurrency/Dependency;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v1}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->get(ILjava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/InterruptedException;
    return-object v1
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 46
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->peek()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object v0

    return-object v0
.end method

.method performOperation(ILjava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lio/fabric/sdk/android/services/concurrency/Dependency;
    .locals 3
    .param p1, "operation"    # I
    .param p2, "time"    # Ljava/lang/Long;
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 195
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v1, v0

    .line 209
    .local v1, "value":Lio/fabric/sdk/android/services/concurrency/Dependency;, "TE;"
    return-object v0

    .line 206
    .end local v1    # "value":Lio/fabric/sdk/android/services/concurrency/Dependency;, "TE;"
    .local v0, "value":Lio/fabric/sdk/android/services/concurrency/Dependency;, "TE;"
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-super {p0, v1, v2, p3}, Ljava/util/concurrent/PriorityBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Dependency;

    .line 207
    goto :goto_0

    .line 203
    :pswitch_1
    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Dependency;

    .line 204
    goto :goto_0

    .line 200
    :pswitch_2
    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Dependency;

    .line 201
    goto :goto_0

    .line 197
    .end local v0    # "value":Lio/fabric/sdk/android/services/concurrency/Dependency;, "TE;"
    :pswitch_3
    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Dependency;

    .line 198
    .restart local v0    # "value":Lio/fabric/sdk/android/services/concurrency/Dependency;, "TE;"
    nop

    .line 211
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public poll()Lio/fabric/sdk/android/services/concurrency/Dependency;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v1}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->get(ILjava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/InterruptedException;
    return-object v1
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Lio/fabric/sdk/android/services/concurrency/Dependency;
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 80
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p3}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->get(ILjava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 46
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->poll()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 46
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    invoke-virtual {p0, p1, p2, p3}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object v0

    return-object v0
.end method

.method public recycleBlockedQueue()V
    .locals 3

    .line 256
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 257
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->blockedQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 259
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/fabric/sdk/android/services/concurrency/Dependency;

    .line 261
    .local v1, "blockedItem":Lio/fabric/sdk/android/services/concurrency/Dependency;, "TE;"
    invoke-virtual {p0, v1}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->canProcess(Lio/fabric/sdk/android/services/concurrency/Dependency;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-super {p0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 263
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .end local v1    # "blockedItem":Lio/fabric/sdk/android/services/concurrency/Dependency;, "TE;"
    :cond_0
    goto :goto_0

    .line 267
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 268
    nop

    .line 269
    return-void

    .line 267
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 176
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 177
    invoke-super {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->blockedQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 179
    :goto_1
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 186
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 187
    invoke-super {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->blockedQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->removeAll(Ljava/util/Collection;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v0, v1

    .line 189
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public size()I
    .locals 2

    .line 96
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 97
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->blockedQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    .line 99
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public take()Lio/fabric/sdk/android/services/concurrency/Dependency;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 65
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->get(ILjava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 46
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->take()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 116
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 117
    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->blockedQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->concatenate([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 107
    invoke-super {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->blockedQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->concatenate([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
