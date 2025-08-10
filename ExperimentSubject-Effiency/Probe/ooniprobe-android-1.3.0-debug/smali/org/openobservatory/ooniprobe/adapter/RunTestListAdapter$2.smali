.class Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$2;
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

    .line 79
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$2;->this$0:Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;

    iput-object p2, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$2;->val$key:Ljava/lang/String;

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

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "data":Landroid/os/Bundle;
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$2;->val$key:Ljava/lang/String;

    const-string v2, "test_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$2;->this$0:Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;

    # getter for: Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v1}, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->access$000(Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 84
    .local v1, "t":Landroid/support/v4/app/FragmentTransaction;
    new-instance v2, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;

    invoke-direct {v2}, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;-><init>()V

    .line 85
    .local v2, "mFrag":Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;
    invoke-virtual {v2, v0}, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08003e

    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 87
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 88
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 89
    return-void
.end method
