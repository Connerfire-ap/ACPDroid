.class Landroid/arch/lifecycle/LiveData$2;
.super Ljava/lang/Object;
.source "LiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;)V
    .locals 0
    .param p1, "this$0"    # Landroid/arch/lifecycle/LiveData;

    .line 100
    .local p0, "this":Landroid/arch/lifecycle/LiveData$2;, "Landroid/arch/lifecycle/LiveData$2;"
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$2;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 104
    .local p0, "this":Landroid/arch/lifecycle/LiveData$2;, "Landroid/arch/lifecycle/LiveData$2;"
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$2;->this$0:Landroid/arch/lifecycle/LiveData;

    # getter for: Landroid/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->access$000(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 105
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/arch/lifecycle/LiveData$2;->this$0:Landroid/arch/lifecycle/LiveData;

    # getter for: Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;
    invoke-static {v2}, Landroid/arch/lifecycle/LiveData;->access$100(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .local v1, "newValue":Ljava/lang/Object;
    :try_start_1
    iget-object v2, p0, Landroid/arch/lifecycle/LiveData$2;->this$0:Landroid/arch/lifecycle/LiveData;

    # getter for: Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;
    invoke-static {}, Landroid/arch/lifecycle/LiveData;->access$200()Ljava/lang/Object;

    move-result-object v3

    # setter for: Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;
    invoke-static {v2, v3}, Landroid/arch/lifecycle/LiveData;->access$102(Landroid/arch/lifecycle/LiveData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$2;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 110
    return-void

    .line 107
    .end local v1    # "newValue":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    .restart local v1    # "newValue":Ljava/lang/Object;
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_0
.end method
