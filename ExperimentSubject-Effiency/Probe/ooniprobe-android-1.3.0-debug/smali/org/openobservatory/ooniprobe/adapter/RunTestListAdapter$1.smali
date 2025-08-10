.class Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$1;
.super Ljava/lang/Object;
.source "RunTestListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->onBindViewHolder(Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$key"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$1;->this$0:Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;

    iput-object p2, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$1;->this$0:Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;

    # getter for: Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v0}, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->access$000(Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v0

    new-instance v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$1;->this$0:Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;

    # getter for: Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v2}, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->access$000(Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v2

    iget-object v3, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$1;->val$key:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/openobservatory/ooniprobe/data/TestData;->doNetworkMeasurements(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 75
    return-void
.end method
