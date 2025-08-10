.class Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$4;
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

    .line 124
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$4;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
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

    .line 126
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$4;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    iget-object v0, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 127
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "send_crash"

    if-eqz p2, :cond_0

    .line 128
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 130
    :cond_0
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 132
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    iget-object v4, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$4;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    # getter for: Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v4}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->access$000(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 134
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 135
    .local v3, "send_crash":Ljava/lang/Boolean;
    const-string v5, "==INS=="

    const-string v6, "Crashlytics"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v5, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    invoke-direct {v5}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->disabled(Z)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->build()Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v5

    .line 137
    .local v5, "core":Lcom/crashlytics/android/core/CrashlyticsCore;
    iget-object v6, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$4;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    # getter for: Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v6}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->access$000(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v6

    new-array v2, v2, [Lio/fabric/sdk/android/Kit;

    new-instance v7, Lcom/crashlytics/android/Crashlytics$Builder;

    invoke-direct {v7}, Lcom/crashlytics/android/Crashlytics$Builder;-><init>()V

    invoke-virtual {v7, v5}, Lcom/crashlytics/android/Crashlytics$Builder;->core(Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/Crashlytics$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/crashlytics/android/Crashlytics$Builder;->build()Lcom/crashlytics/android/Crashlytics;

    move-result-object v7

    aput-object v7, v2, v1

    invoke-static {v6, v2}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 138
    return-void
.end method
