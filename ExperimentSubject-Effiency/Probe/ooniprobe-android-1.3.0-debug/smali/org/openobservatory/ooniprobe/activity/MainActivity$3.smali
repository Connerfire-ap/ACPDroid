.class Lorg/openobservatory/ooniprobe/activity/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/activity/MainActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/activity/MainActivity;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/activity/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity$3;->this$0:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "id"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity$3;->this$0:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-static {v0, v0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->removeAllTests(Lorg/openobservatory/ooniprobe/activity/MainActivity;Landroid/content/Context;)V

    .line 248
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity$3;->this$0:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "org.openobservatory.ooniprobe.fragment.PastTestsFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;

    .line 249
    .local v0, "pastTestsFragment":Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->updateList()V

    .line 252
    :cond_0
    return-void
.end method
