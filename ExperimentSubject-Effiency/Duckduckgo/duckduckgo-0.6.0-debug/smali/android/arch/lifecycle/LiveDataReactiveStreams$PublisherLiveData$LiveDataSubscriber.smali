.class final Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "LiveDataReactiveStreams.java"

# interfaces
.implements Lorg/reactivestreams/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LiveDataSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lorg/reactivestreams/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;)V
    .locals 0
    .param p1, "this$0"    # Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;

    .line 237
    .local p0, "this":Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData<TT;>.LiveDataSubscriber;"
    iput-object p1, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelSubscription()V
    .locals 1

    .line 275
    .local p0, "this":Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData<TT;>.LiveDataSubscriber;"
    invoke-virtual {p0}, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    .line 276
    .local v0, "s":Lorg/reactivestreams/Subscription;
    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 279
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 271
    .local p0, "this":Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData<TT;>.LiveDataSubscriber;"
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;

    iget-object v0, v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;->mSubscriber:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 256
    .local p0, "this":Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData<TT;>.LiveDataSubscriber;"
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;

    iget-object v0, v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;->mSubscriber:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 258
    invoke-static {}, Landroid/arch/core/executor/ArchTaskExecutor;->getInstance()Landroid/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    new-instance v1, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber$1;

    invoke-direct {v1, p0, p1}, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber$1;-><init>(Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/arch/core/executor/ArchTaskExecutor;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 251
    .local p0, "this":Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData<TT;>.LiveDataSubscriber;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;->postValue(Ljava/lang/Object;)V

    .line 252
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 242
    .local p0, "this":Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData<TT;>.LiveDataSubscriber;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 247
    :goto_0
    return-void
.end method
