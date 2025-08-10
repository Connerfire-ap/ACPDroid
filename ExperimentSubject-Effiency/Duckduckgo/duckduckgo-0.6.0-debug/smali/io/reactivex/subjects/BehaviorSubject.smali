.class public final Lio/reactivex/subjects/BehaviorSubject;
.super Lio/reactivex/subjects/Subject;
.source "BehaviorSubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;
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
.field static final EMPTY:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field static final TERMINATED:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;


# instance fields
.field index:J

.field final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field final readLock:Ljava/util/concurrent/locks/Lock;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final value:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lio/reactivex/subjects/BehaviorSubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 80
    new-array v1, v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    sput-object v1, Lio/reactivex/subjects/BehaviorSubject;->EMPTY:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    .line 83
    new-array v0, v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    sput-object v0, Lio/reactivex/subjects/BehaviorSubject;->TERMINATED:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 125
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    .line 126
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 127
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/subjects/BehaviorSubject;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 128
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/BehaviorSubject;->EMPTY:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    .line 132
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 141
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lio/reactivex/subjects/BehaviorSubject;-><init>()V

    .line 142
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "defaultValue is null"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public static create()Lio/reactivex/subjects/BehaviorSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 101
    new-instance v0, Lio/reactivex/subjects/BehaviorSubject;

    invoke-direct {v0}, Lio/reactivex/subjects/BehaviorSubject;-><init>()V

    return-object v0
.end method

.method public static createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 117
    .local p0, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/reactivex/subjects/BehaviorSubject;

    invoke-direct {v0, p0}, Lio/reactivex/subjects/BehaviorSubject;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 316
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    .local p1, "rs":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    .line 317
    .local v0, "a":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    sget-object v1, Lio/reactivex/subjects/BehaviorSubject;->TERMINATED:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 318
    return v2

    .line 320
    :cond_0
    array-length v1, v0

    .line 322
    .local v1, "len":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    .line 323
    .local v3, "b":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    aput-object p1, v3, v1

    .line 325
    iget-object v2, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    const/4 v2, 0x1

    return v2

    .line 328
    .end local v0    # "a":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    .end local v1    # "len":I
    .end local v3    # "b":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 226
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 227
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    return-object v1

    .line 230
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 239
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 241
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 3

    .line 253
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    sget-object v0, Lio/reactivex/subjects/BehaviorSubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    .line 254
    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, v1}, Lio/reactivex/subjects/BehaviorSubject;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 255
    .local v2, "b":[Ljava/lang/Object;, "[TT;"
    if-ne v2, v0, :cond_0

    .line 256
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    .line 258
    :cond_0
    return-object v2
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 272
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 273
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 279
    :cond_0
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 280
    .local v3, "v":Ljava/lang/Object;, "TT;"
    array-length v4, p1

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 281
    aput-object v3, p1, v2

    .line 282
    array-length v2, p1

    if-eq v2, v5, :cond_2

    .line 283
    aput-object v1, p1, v5

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    .line 287
    aput-object v3, p1, v2

    .line 289
    :cond_2
    :goto_0
    return-object p1

    .line 274
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    :cond_3
    :goto_1
    array-length v3, p1

    if-eqz v3, :cond_4

    .line 275
    aput-object v1, p1, v2

    .line 277
    :cond_4
    return-object p1
.end method

.method public hasComplete()Z
    .locals 2

    .line 294
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 295
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasObservers()Z
    .locals 1

    .line 216
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

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

    .line 300
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 301
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasValue()Z
    .locals 2

    .line 310
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 311
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onComplete()V
    .locals 7

    .line 205
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    return-void

    .line 208
    :cond_0
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    .line 209
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/BehaviorSubject;->terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 210
    .local v4, "bs":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    iget-wide v5, p0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    invoke-virtual {v4, v0, v5, v6}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitNext(Ljava/lang/Object;J)V

    .line 209
    .end local v4    # "bs":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 190
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    if-nez p1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 193
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 195
    return-void

    .line 197
    :cond_1
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 198
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/BehaviorSubject;->terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 199
    .local v4, "bs":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    iget-wide v5, p0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    invoke-virtual {v4, v0, v5, v6}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitNext(Ljava/lang/Object;J)V

    .line 198
    .end local v4    # "bs":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    :cond_2
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 174
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/BehaviorSubject;->onError(Ljava/lang/Throwable;)V

    .line 176
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    return-void

    .line 181
    :cond_1
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/BehaviorSubject;->setCurrent(Ljava/lang/Object;)V

    .line 183
    iget-object v1, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 184
    .local v4, "bs":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    iget-wide v5, p0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    invoke-virtual {v4, v0, v5, v6}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitNext(Ljava/lang/Object;J)V

    .line 183
    .end local v4    # "bs":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    :cond_2
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 167
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 170
    :cond_0
    return-void
.end method

.method remove(Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 334
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    .local p1, "rs":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    .line 335
    .local v0, "a":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    sget-object v1, Lio/reactivex/subjects/BehaviorSubject;->TERMINATED:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    if-eq v0, v1, :cond_6

    sget-object v1, Lio/reactivex/subjects/BehaviorSubject;->EMPTY:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    if-ne v0, v1, :cond_0

    goto :goto_4

    .line 338
    :cond_0
    array-length v1, v0

    .line 339
    .local v1, "len":I
    const/4 v2, -0x1

    .line 340
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 341
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 342
    move v2, v3

    .line 343
    goto :goto_2

    .line 340
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 347
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 348
    return-void

    .line 351
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 352
    sget-object v3, Lio/reactivex/subjects/BehaviorSubject;->EMPTY:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    .local v3, "b":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    goto :goto_3

    .line 354
    .end local v3    # "b":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    .line 355
    .local v4, "b":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 358
    .end local v4    # "b":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    .restart local v3    # "b":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 359
    return-void

    .line 361
    .end local v0    # "a":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    .end local v1    # "len":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    :cond_5
    goto :goto_0

    .line 336
    .restart local v0    # "a":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    :cond_6
    :goto_4
    return-void
.end method

.method setCurrent(Ljava/lang/Object;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 380
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 382
    :try_start_0
    iget-wide v0, p0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    .line 383
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 386
    nop

    .line 387
    return-void

    .line 385
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/subjects/BehaviorSubject;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 147
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    .local p1, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    new-instance v0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;-><init>(Lio/reactivex/Observer;Lio/reactivex/subjects/BehaviorSubject;)V

    .line 148
    .local v0, "bs":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 149
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/BehaviorSubject;->add(Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iget-boolean v1, v0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/BehaviorSubject;->remove(Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitFirst()V

    goto :goto_0

    .line 156
    :cond_1
    iget-object v1, p0, Lio/reactivex/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 157
    .local v1, "ex":Ljava/lang/Throwable;
    sget-object v2, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-ne v1, v2, :cond_2

    .line 158
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_0

    .line 160
    :cond_2
    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 163
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method subscriberCount()I
    .locals 1

    .line 221
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    array-length v0, v0

    return v0
.end method

.method terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;
    .locals 3
    .param p1, "terminalValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<",
            "TT;>;"
        }
    .end annotation

    .line 367
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    .line 368
    .local v0, "a":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    sget-object v1, Lio/reactivex/subjects/BehaviorSubject;->TERMINATED:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    if-eq v0, v1, :cond_0

    .line 369
    iget-object v2, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    .line 370
    if-eq v0, v1, :cond_0

    .line 372
    invoke-virtual {p0, p1}, Lio/reactivex/subjects/BehaviorSubject;->setCurrent(Ljava/lang/Object;)V

    .line 376
    :cond_0
    return-object v0
.end method
