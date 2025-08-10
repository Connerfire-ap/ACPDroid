.class Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$9;
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

.field final synthetic val$include_asnButton:Landroid/support/v7/widget/SwitchCompat;

.field final synthetic val$include_ccButton:Landroid/support/v7/widget/SwitchCompat;

.field final synthetic val$include_ipButton:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;Landroid/support/v7/widget/SwitchCompat;Landroid/support/v7/widget/SwitchCompat;Landroid/support/v7/widget/SwitchCompat;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$include_asnButton",
            "val$include_ccButton",
            "val$include_ipButton"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$9;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    iput-object p2, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$9;->val$include_asnButton:Landroid/support/v7/widget/SwitchCompat;

    iput-object p3, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$9;->val$include_ccButton:Landroid/support/v7/widget/SwitchCompat;

    iput-object p4, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$9;->val$include_ipButton:Landroid/support/v7/widget/SwitchCompat;

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

    .line 236
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$9;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    iget-object v0, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 237
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "upload_results"

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 238
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$9;->val$include_asnButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 239
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$9;->val$include_ccButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 240
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$9;->val$include_ipButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 241
    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 243
    :cond_0
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$9;->val$include_asnButton:Landroid/support/v7/widget/SwitchCompat;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 244
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$9;->val$include_ccButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 245
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$9;->val$include_ipButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 246
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 248
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 249
    return-void
.end method
