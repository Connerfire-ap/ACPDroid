.class Lorg/openobservatory/ooniprobe/activity/MainActivity$1;
.super Landroid/support/v7/app/ActionBarDrawerToggle;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/activity/MainActivity;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/activity/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/activity/MainActivity;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p4, "openDrawerContentDescRes"    # I
    .param p5, "closeDrawerContentDescRes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "activity",
            "drawerLayout",
            "openDrawerContentDescRes",
            "closeDrawerContentDescRes"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity$1;->this$0:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity$1;->this$0:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    # getter for: Lorg/openobservatory/ooniprobe/activity/MainActivity;->mleftMenuListAdapter:Lorg/openobservatory/ooniprobe/adapter/LeftMenuListAdapter;
    invoke-static {v0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->access$100(Lorg/openobservatory/ooniprobe/activity/MainActivity;)Lorg/openobservatory/ooniprobe/adapter/LeftMenuListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/adapter/LeftMenuListAdapter;->notifyDataSetChanged()V

    .line 113
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity$1;->this$0:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->invalidateOptionsMenu()V

    .line 114
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawerView"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity$1;->this$0:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    # getter for: Lorg/openobservatory/ooniprobe/activity/MainActivity;->mleftMenuListAdapter:Lorg/openobservatory/ooniprobe/adapter/LeftMenuListAdapter;
    invoke-static {v0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->access$100(Lorg/openobservatory/ooniprobe/activity/MainActivity;)Lorg/openobservatory/ooniprobe/adapter/LeftMenuListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/adapter/LeftMenuListAdapter;->notifyDataSetChanged()V

    .line 118
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity$1;->this$0:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->invalidateOptionsMenu()V

    .line 119
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .param p1, "newState"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    .line 123
    return-void
.end method
