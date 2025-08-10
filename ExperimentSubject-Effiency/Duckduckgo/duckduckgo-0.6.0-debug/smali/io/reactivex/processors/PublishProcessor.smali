.class public final Lio/reactivex/processors/PublishProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "PublishProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/PublishProcessor$PublishSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

.field static final TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;


# instance fields
.field error:Ljava/lang/Throwable;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/processors/PublishProcessor$PublishSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    sput-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .line 64
    new-array v0, v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    sput-object v0, Lio/reactivex/processors/PublishProcessor;->EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 87
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 89
    return-void
.end method

.method public static create()Lio/reactivex/processors/PublishProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/PublishProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 79
    new-instance v0, Lio/reactivex/processors/PublishProcessor;

    invoke-direct {v0}, Lio/reactivex/processors/PublishProcessor;-><init>()V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/processors/PublishProcessor$PublishSubscription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/PublishProcessor$PublishSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    .line 120
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    .local p1, "ps":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .line 121
    .local v0, "a":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 122
    return v2

    .line 125
    :cond_0
    array-length v1, v0

    .line 127
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .line 128
    .local v3, "b":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    aput-object p1, v3, v1

    .line 131
    iget-object v2, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    const/4 v2, 0x1

    return v2

    .line 134
    .end local v0    # "a":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    .end local v1    # "n":I
    .end local v3    # "b":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 269
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    return-object v0

    .line 272
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasComplete()Z
    .locals 2

    .line 282
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSubscribers()Z
    .locals 1

    .line 264
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

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

    .line 277
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 244
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 245
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/reactivex/processors/PublishProcessor;->onError(Ljava/lang/Throwable;)V

    .line 246
    return v0

    .line 248
    :cond_0
    iget-object v1, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .line 250
    .local v1, "array":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 251
    .local v5, "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-virtual {v5}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->isFull()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 252
    return v3

    .line 250
    .end local v5    # "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 256
    :cond_2
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 257
    .local v4, "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-virtual {v4, p1}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->onNext(Ljava/lang/Object;)V

    .line 256
    .end local v4    # "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 259
    :cond_3
    return v0
.end method

.method public onComplete()V
    .locals 4

    .line 221
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    .line 222
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 225
    .local v3, "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-virtual {v3}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->onComplete()V

    .line 224
    .end local v3    # "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 204
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    .line 205
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 206
    return-void

    .line 208
    :cond_0
    if-nez p1, :cond_1

    .line 209
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 211
    :cond_1
    iput-object p1, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    .line 213
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 214
    .local v3, "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-virtual {v3, p1}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->onError(Ljava/lang/Throwable;)V

    .line 213
    .end local v3    # "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_2
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 189
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    .line 190
    return-void

    .line 192
    :cond_0
    if-nez p1, :cond_1

    .line 193
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/processors/PublishProcessor;->onError(Ljava/lang/Throwable;)V

    .line 194
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 197
    .local v3, "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-virtual {v3, p1}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->onNext(Ljava/lang/Object;)V

    .line 196
    .end local v3    # "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_2
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 179
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    .line 180
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 181
    return-void

    .line 184
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 185
    return-void
.end method

.method remove(Lio/reactivex/processors/PublishProcessor$PublishSubscription;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/PublishProcessor$PublishSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    .local p1, "ps":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .line 145
    .local v0, "a":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-eq v0, v1, :cond_6

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    goto :goto_4

    .line 149
    :cond_0
    array-length v1, v0

    .line 150
    .local v1, "n":I
    const/4 v2, -0x1

    .line 151
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 152
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 153
    move v2, v3

    .line 154
    goto :goto_2

    .line 151
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 158
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 159
    return-void

    .line 164
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 165
    sget-object v3, Lio/reactivex/processors/PublishProcessor;->EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .local v3, "b":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    goto :goto_3

    .line 167
    .end local v3    # "b":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .line 168
    .local v4, "b":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 171
    .end local v4    # "b":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    .restart local v3    # "b":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 172
    return-void

    .line 174
    .end local v0    # "a":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    :cond_5
    goto :goto_0

    .line 146
    .restart local v0    # "a":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    :cond_6
    :goto_4
    return-void
.end method

.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 94
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    .local p1, "t":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    new-instance v0, Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/PublishProcessor;)V

    .line 95
    .local v0, "ps":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 96
    invoke-virtual {p0, v0}, Lio/reactivex/processors/PublishProcessor;->add(Lio/reactivex/processors/PublishProcessor$PublishSubscription;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v0}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {p0, v0}, Lio/reactivex/processors/PublishProcessor;->remove(Lio/reactivex/processors/PublishProcessor$PublishSubscription;)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v1, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    .line 104
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 105
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 110
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void
.end method
