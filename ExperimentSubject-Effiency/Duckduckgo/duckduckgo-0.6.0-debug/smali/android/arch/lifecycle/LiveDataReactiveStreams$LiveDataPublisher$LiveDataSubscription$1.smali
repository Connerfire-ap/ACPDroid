.class Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;
.super Ljava/lang/Object;
.source "LiveDataReactiveStreams.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->request(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

.field final synthetic val$n:J


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;J)V
    .locals 0
    .param p1, "this$0"    # Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    .line 114
    .local p0, "this":Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;"
    iput-object p1, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    iput-wide p2, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->val$n:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 117
    .local p0, "this":Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;"
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    iget-boolean v0, v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    iget-wide v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->val$n:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_2

    .line 121
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    iput-boolean v5, v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mCanceled:Z

    .line 122
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    iget-boolean v0, v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mObserving:Z

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    iget-object v0, v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mLiveData:Landroid/arch/lifecycle/LiveData;

    iget-object v1, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    .line 124
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mObserving:Z

    .line 126
    :cond_1
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    iput-object v4, v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mLatest:Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    iget-object v0, v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mSubscriber:Lorg/reactivestreams/Subscriber;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Non-positive request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 129
    return-void

    .line 133
    :cond_2
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    iget-wide v1, v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mRequested:J

    iget-wide v6, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->val$n:J

    add-long/2addr v1, v6

    iget-object v3, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    iget-wide v6, v3, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mRequested:J

    cmp-long v3, v1, v6

    if-ltz v3, :cond_3

    iget-object v1, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    iget-wide v1, v1, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mRequested:J

    iget-wide v6, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->val$n:J

    add-long/2addr v1, v6

    goto :goto_0

    :cond_3
    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    iput-wide v1, v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mRequested:J

    .line 135
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    iget-boolean v0, v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mObserving:Z

    if-nez v0, :cond_4

    .line 136
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    iput-boolean v5, v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mObserving:Z

    .line 137
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    iget-object v0, v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mLiveData:Landroid/arch/lifecycle/LiveData;

    iget-object v1, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    iget-object v1, v1, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mLifecycle:Landroid/arch/lifecycle/LifecycleOwner;

    iget-object v2, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    invoke-virtual {v0, v1, v2}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    goto :goto_1

    .line 138
    :cond_4
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    iget-object v0, v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mLatest:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 139
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    iget-object v1, v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mLatest:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->onChanged(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;->this$0:Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    iput-object v4, v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mLatest:Ljava/lang/Object;

    .line 142
    :cond_5
    :goto_1
    return-void
.end method
