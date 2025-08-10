.class public final Lio/reactivex/subjects/ReplaySubject;
.super Lio/reactivex/subjects/Subject;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;,
        Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;,
        Lio/reactivex/subjects/ReplaySubject$TimedNode;,
        Lio/reactivex/subjects/ReplaySubject$Node;,
        Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;,
        Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;,
        Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subjects/Subject<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field static final TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;


# instance fields
.field final buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$ReplayBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    sput-object v1, Lio/reactivex/subjects/ReplaySubject;->EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    .line 60
    new-array v1, v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    sput-object v1, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    .line 339
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lio/reactivex/subjects/ReplaySubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$ReplayBuffer<",
            "TT;>;)V"
        }
    .end annotation

    .line 225
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    .local p1, "buffer":Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    .line 226
    iput-object p1, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    .line 227
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/ReplaySubject;->EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 228
    return-void
.end method

.method public static create()Lio/reactivex/subjects/ReplaySubject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 79
    new-instance v0, Lio/reactivex/subjects/ReplaySubject;

    new-instance v1, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    return-object v0
.end method

.method public static create(I)Lio/reactivex/subjects/ReplaySubject;
    .locals 2
    .param p0, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 99
    new-instance v0, Lio/reactivex/subjects/ReplaySubject;

    new-instance v1, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;

    invoke-direct {v1, p0}, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    return-object v0
.end method

.method static createUnbounded()Lio/reactivex/subjects/ReplaySubject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .line 141
    new-instance v0, Lio/reactivex/subjects/ReplaySubject;

    new-instance v1, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    return-object v0
.end method

.method public static createWithSize(I)Lio/reactivex/subjects/ReplaySubject;
    .locals 2
    .param p0, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 124
    new-instance v0, Lio/reactivex/subjects/ReplaySubject;

    new-instance v1, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;

    invoke-direct {v1, p0}, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    return-object v0
.end method

.method public static createWithTime(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/subjects/ReplaySubject;
    .locals 8
    .param p0, "maxAge"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lio/reactivex/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 178
    new-instance v0, Lio/reactivex/subjects/ReplaySubject;

    new-instance v7, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;

    const v2, 0x7fffffff

    move-object v1, v7

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-direct {v0, v7}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    return-object v0
.end method

.method public static createWithTimeAndSize(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;I)Lio/reactivex/subjects/ReplaySubject;
    .locals 8
    .param p0, "maxAge"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lio/reactivex/Scheduler;
    .param p4, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "I)",
            "Lio/reactivex/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 217
    new-instance v0, Lio/reactivex/subjects/ReplaySubject;

    new-instance v7, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;

    move-object v1, v7

    move v2, p4

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-direct {v0, v7}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 396
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    .local p1, "rs":Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    .line 397
    .local v0, "a":[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    sget-object v1, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 398
    return v2

    .line 400
    :cond_0
    array-length v1, v0

    .line 402
    .local v1, "len":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    .line 403
    .local v3, "b":[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    aput-object p1, v3, v1

    .line 405
    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    const/4 v2, 0x1

    return v2

    .line 408
    .end local v0    # "a":[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    .end local v1    # "len":I
    .end local v3    # "b":[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 322
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    .line 323
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    return-object v1

    .line 326
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 335
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 3

    .line 348
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    sget-object v0, Lio/reactivex/subjects/ReplaySubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    .line 349
    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, v1}, Lio/reactivex/subjects/ReplaySubject;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 350
    .local v2, "b":[Ljava/lang/Object;, "[TT;"
    if-ne v2, v0, :cond_0

    .line 351
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    .line 353
    :cond_0
    return-object v2
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 366
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0, p1}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasComplete()Z
    .locals 2

    .line 371
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    .line 372
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasObservers()Z
    .locals 1

    .line 313
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasThrowable()Z
    .locals 2

    .line 377
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    .line 378
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasValue()Z
    .locals 1

    .line 387
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method observerCount()I
    .locals 1

    .line 317
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    array-length v0, v0

    return v0
.end method

.method public onComplete()V
    .locals 6

    .line 295
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    if-eqz v0, :cond_0

    .line 296
    return-void

    .line 298
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    .line 300
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    .line 302
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    .line 304
    .local v1, "b":Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    invoke-interface {v1, v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->addFinal(Ljava/lang/Object;)V

    .line 306
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject;->terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 307
    .local v5, "rs":Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    invoke-interface {v1, v5}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    .line 306
    .end local v5    # "rs":Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 309
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 273
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    if-nez p1, :cond_0

    .line 274
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 276
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    if-eqz v0, :cond_1

    .line 277
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 278
    return-void

    .line 280
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    .line 282
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 284
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    .line 286
    .local v1, "b":Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    invoke-interface {v1, v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->addFinal(Ljava/lang/Object;)V

    .line 288
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject;->terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 289
    .local v5, "rs":Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    invoke-interface {v1, v5}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    .line 288
    .end local v5    # "rs":Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 291
    :cond_2
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 255
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject;->onError(Ljava/lang/Throwable;)V

    .line 257
    return-void

    .line 259
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    if-eqz v0, :cond_1

    .line 260
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    .line 264
    .local v0, "b":Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    invoke-interface {v0, p1}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->add(Ljava/lang/Object;)V

    .line 266
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 267
    .local v4, "rs":Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    invoke-interface {v0, v4}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    .line 266
    .end local v4    # "rs":Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    :cond_2
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 248
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    if-eqz v0, :cond_0

    .line 249
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 251
    :cond_0
    return-void
.end method

.method remove(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 414
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    .local p1, "rs":Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    .line 415
    .local v0, "a":[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    sget-object v1, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    if-eq v0, v1, :cond_6

    sget-object v1, Lio/reactivex/subjects/ReplaySubject;->EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    if-ne v0, v1, :cond_0

    goto :goto_4

    .line 418
    :cond_0
    array-length v1, v0

    .line 419
    .local v1, "len":I
    const/4 v2, -0x1

    .line 420
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 421
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 422
    move v2, v3

    .line 423
    goto :goto_2

    .line 420
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 427
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 428
    return-void

    .line 431
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 432
    sget-object v3, Lio/reactivex/subjects/ReplaySubject;->EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    .local v3, "b":[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    goto :goto_3

    .line 434
    .end local v3    # "b":[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    .line 435
    .local v4, "b":[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 438
    .end local v4    # "b":[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    .restart local v3    # "b":[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 439
    return-void

    .line 441
    .end local v0    # "a":[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    .end local v1    # "len":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    :cond_5
    goto :goto_0

    .line 416
    .restart local v0    # "a":[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    :cond_6
    :goto_4
    return-void
.end method

.method size()I
    .locals 1

    .line 391
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->size()I

    move-result v0

    return v0
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 232
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    .local p1, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;-><init>(Lio/reactivex/Observer;Lio/reactivex/subjects/ReplaySubject;)V

    .line 233
    .local v0, "rs":Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 235
    iget-boolean v1, v0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    if-nez v1, :cond_1

    .line 236
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject;->add(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-boolean v1, v0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject;->remove(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    .line 239
    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v1, v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    .line 244
    :cond_1
    return-void
.end method

.method terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;
    .locals 2
    .param p1, "terminalValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<",
            "TT;>;"
        }
    .end annotation

    .line 446
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject;, "Lio/reactivex/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    return-object v0

    .line 449
    :cond_0
    sget-object v0, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    return-object v0
.end method
