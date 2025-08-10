.class Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$1;
.super Ljava/lang/Object;
.source "TestResultListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->onBindViewHolder(Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$position"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$1;->this$0:Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;

    iput p2, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$1;->val$position:I

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

    .line 68
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$1;->this$0:Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;

    iget v1, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$1;->val$position:I

    # invokes: Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->showResult(I)V
    invoke-static {v0, v1}, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->access$000(Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;I)V

    .line 69
    return-void
.end method
