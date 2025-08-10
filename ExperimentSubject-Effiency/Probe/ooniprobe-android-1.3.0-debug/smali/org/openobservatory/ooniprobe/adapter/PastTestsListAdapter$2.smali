.class Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$2;
.super Ljava/lang/Object;
.source "PastTestsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->onBindViewHolder(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

.field final synthetic val$i:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;


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
            "val$i"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$2;->this$0:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

    iput-object p2, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$2;->val$i:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$2;->this$0:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

    iget-object v1, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$2;->val$i:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    # invokes: Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->goToResults(Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    invoke-static {v0, v1}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->access$100(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 113
    return-void
.end method
