.class final Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;
.super Ljava/lang/Object;
.source "BehaviorSubject.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/BehaviorSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BehaviorDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field emitting:Z

.field fastPath:Z

.field index:J

.field next:Z

.field queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final state:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/subjects/BehaviorSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "TT;>;)V"
        }
    .end annotation

    .line 404
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .local p2, "state":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p1, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->actual:Lio/reactivex/Observer;

    .line 406
    iput-object p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->state:Lio/reactivex/subjects/BehaviorSubject;

    .line 407
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 411
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-nez v0, :cond_0

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    .line 414
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->state:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0, p0}, Lio/reactivex/subjects/BehaviorSubject;->remove(Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;)V

    .line 416
    :cond_0
    return-void
.end method

.method emitFirst()V
    .locals 5

    .line 424
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_0

    .line 425
    return-void

    .line 428
    :cond_0
    monitor-enter p0

    .line 429
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_1

    .line 430
    monitor-exit p0

    return-void

    .line 432
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->next:Z

    if-eqz v0, :cond_2

    .line 433
    monitor-exit p0

    return-void

    .line 436
    :cond_2
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->state:Lio/reactivex/subjects/BehaviorSubject;

    .line 437
    .local v0, "s":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v1, v0, Lio/reactivex/subjects/BehaviorSubject;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 439
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 440
    iget-wide v2, v0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    iput-wide v2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->index:J

    .line 441
    iget-object v2, v0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 442
    .local v2, "o":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 444
    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitting:Z

    .line 445
    iput-boolean v3, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->next:Z

    .line 446
    .end local v0    # "s":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    .end local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    if-eqz v2, :cond_5

    .line 449
    invoke-virtual {p0, v2}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 450
    return-void

    .line 453
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitLoop()V

    .line 455
    :cond_5
    return-void

    .line 446
    .end local v2    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method emitLoop()V
    .locals 2

    .line 493
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    :goto_0
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_0

    .line 494
    return-void

    .line 497
    :cond_0
    monitor-enter p0

    .line 498
    :try_start_0
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 499
    .local v0, "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 500
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitting:Z

    .line 501
    monitor-exit p0

    return-void

    .line 503
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 504
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    invoke-virtual {v0, p0}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->forEachWhile(Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;)V

    .line 507
    .end local v0    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    goto :goto_0

    .line 504
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method emitNext(Ljava/lang/Object;J)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "stateIndex"    # J

    .line 458
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_0

    .line 459
    return-void

    .line 461
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->fastPath:Z

    if-nez v0, :cond_5

    .line 462
    monitor-enter p0

    .line 463
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_1

    .line 464
    monitor-exit p0

    return-void

    .line 466
    :cond_1
    iget-wide v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->index:J

    cmp-long v2, v0, p2

    if-nez v2, :cond_2

    .line 467
    monitor-exit p0

    return-void

    .line 469
    :cond_2
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitting:Z

    if-eqz v0, :cond_4

    .line 470
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 471
    .local v0, "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    if-nez v0, :cond_3

    .line 472
    new-instance v1, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    move-object v0, v1

    .line 473
    iput-object v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 475
    :cond_3
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    .line 476
    monitor-exit p0

    return-void

    .line 478
    .end local v0    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->next:Z

    .line 479
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    iput-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->fastPath:Z

    goto :goto_0

    .line 479
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 483
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->test(Ljava/lang/Object;)Z

    .line 484
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 420
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    return v0
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 488
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->actual:Lio/reactivex/Observer;

    invoke-static {p1, v0}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lio/reactivex/Observer;)Z

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
