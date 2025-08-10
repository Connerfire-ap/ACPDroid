.class Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$4;
.super Ljava/lang/Object;
.source "PastTestsListAdapter.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->showPopupMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

.field final synthetic val$item:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$item"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$4;->this$0:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

    iput-object p2, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$4;->val$item:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuItem"
        }
    .end annotation

    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 220
    const/4 v0, 0x0

    return v0

    .line 214
    :pswitch_0
    new-instance v0, Lorg/openobservatory/ooniprobe/data/TestStorage;

    invoke-direct {v0}, Lorg/openobservatory/ooniprobe/data/TestStorage;-><init>()V

    .line 215
    .local v0, "ts":Lorg/openobservatory/ooniprobe/data/TestStorage;
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$4;->this$0:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

    # getter for: Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v1}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->access$200(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$4;->val$item:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    invoke-static {v1, v2}, Lorg/openobservatory/ooniprobe/data/TestStorage;->removeTest(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 216
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$4;->this$0:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

    # getter for: Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v1}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->access$200(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$4;->this$0:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

    # getter for: Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v2}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->access$200(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openobservatory/ooniprobe/data/TestData;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;

    move-result-object v1

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$4;->val$item:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    invoke-virtual {v1, v2}, Lorg/openobservatory/ooniprobe/data/TestData;->removeTest(Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 217
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$4;->this$0:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

    # getter for: Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v1}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->access$200(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$4;->this$0:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

    # getter for: Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v2}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->access$200(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openobservatory/ooniprobe/data/TestData;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openobservatory/ooniprobe/data/TestData;->notifyObservers()V

    .line 218
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f080079
        :pswitch_0
    .end packed-switch
.end method
