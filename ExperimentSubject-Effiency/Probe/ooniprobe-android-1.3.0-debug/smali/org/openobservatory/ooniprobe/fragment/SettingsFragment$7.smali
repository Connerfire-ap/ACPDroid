.class Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$7;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$7;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$7;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    iget-object v0, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 193
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    const-string v2, "local_notifications"

    if-eqz p2, :cond_0

    .line 194
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$7;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    iget-object v3, v3, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->local_notifications_timeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 195
    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 196
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$7;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    # getter for: Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v1}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->access$000(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/openobservatory/ooniprobe/utils/NotificationHandler;->setRecurringAlarm(Landroid/content/Context;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$7;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    iget-object v3, v3, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->local_notifications_timeLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 199
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 200
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$7;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    # getter for: Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v1}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->access$000(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/openobservatory/ooniprobe/utils/NotificationHandler;->cancelRecurringAlarm(Landroid/content/Context;)V

    .line 202
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    return-void
.end method
