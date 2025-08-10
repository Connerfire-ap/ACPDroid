.class Lorg/openobservatory/ooniprobe/activity/RunTestActivity$5;
.super Ljava/lang/Object;
.source "RunTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->configureScreen(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/activity/RunTestActivity;

.field final synthetic val$urlItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/activity/RunTestActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/activity/RunTestActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$urlItems"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$5;->this$0:Lorg/openobservatory/ooniprobe/activity/RunTestActivity;

    iput-object p2, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$5;->val$urlItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$5;->this$0:Lorg/openobservatory/ooniprobe/activity/RunTestActivity;

    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$5;->this$0:Lorg/openobservatory/ooniprobe/activity/RunTestActivity;

    invoke-virtual {v2}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    # getter for: Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->test_name:Ljava/lang/String;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$5;->val$urlItems:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lorg/openobservatory/ooniprobe/data/TestData;->doNetworkMeasurements(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 169
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$5;->this$0:Lorg/openobservatory/ooniprobe/activity/RunTestActivity;

    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->goToMainActivity()V

    .line 170
    return-void
.end method
