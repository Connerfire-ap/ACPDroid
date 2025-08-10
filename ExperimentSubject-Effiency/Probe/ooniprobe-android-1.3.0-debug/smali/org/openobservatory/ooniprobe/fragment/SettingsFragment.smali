.class public Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingsFragment.java"


# instance fields
.field local_notifications_timeLayout:Landroid/widget/RelativeLayout;

.field private mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

.field preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;)Lorg/openobservatory/ooniprobe/activity/MainActivity;
    .locals 1
    .param p0, "x0"    # Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    .line 42
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 51
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/openobservatory/ooniprobe/activity/MainActivity;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    nop

    .line 56
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must implement onViewSelected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->setHasOptionsMenu(Z)V

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 22
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 78
    move-object/from16 v0, p0

    const v1, 0x7f0a003a

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, "v":Landroid/view/View;
    iget-object v5, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    .line 80
    const v5, 0x7f080035

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/SwitchCompat;

    .line 81
    .local v5, "include_ipButton":Landroid/support/v7/widget/SwitchCompat;
    iget-object v6, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "include_ip"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 82
    new-instance v6, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$1;

    invoke-direct {v6, v0}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$1;-><init>(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    const v6, 0x7f080033

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/SwitchCompat;

    .line 95
    .local v6, "include_asnButton":Landroid/support/v7/widget/SwitchCompat;
    iget-object v7, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "include_asn"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 96
    new-instance v7, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$2;

    invoke-direct {v7, v0}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$2;-><init>(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;)V

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    const v7, 0x7f080034

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/SwitchCompat;

    .line 109
    .local v7, "include_ccButton":Landroid/support/v7/widget/SwitchCompat;
    iget-object v8, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v10, "include_cc"

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 110
    new-instance v8, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$3;

    invoke-direct {v8, v0}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$3;-><init>(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;)V

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    const v8, 0x7f0800ba

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/SwitchCompat;

    .line 123
    .local v8, "send_crashButton":Landroid/support/v7/widget/SwitchCompat;
    iget-object v10, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v11, "send_crash"

    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v8, v10}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 124
    new-instance v10, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$4;

    invoke-direct {v10, v0}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$4;-><init>(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;)V

    invoke-virtual {v8, v10}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    const v10, 0x7f080075

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 142
    .local v10, "max_runtime":Landroid/widget/TextView;
    iget-object v11, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v12, "max_runtime"

    const-string v13, "90"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 143
    .local v11, "max_runtime_str":Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const/4 v12, 0x6

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 145
    new-instance v12, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$5;

    invoke-direct {v12, v0}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$5;-><init>(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;)V

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 165
    new-instance v12, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$6;

    invoke-direct {v12, v0}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$6;-><init>(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;)V

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    const v12, 0x7f08006f

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 180
    .local v12, "local_notifications_timeEditText":Landroid/widget/EditText;
    iget-object v13, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v14, "local_notifications_time"

    const-string v15, "18:00"

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 181
    .local v13, "local_notifications_time":Ljava/lang/String;
    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 182
    .local v15, "separated":[Ljava/lang/String;
    aget-object v16, v15, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 183
    .local v16, "hours":I
    aget-object v17, v15, v9

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 184
    .local v17, "minutes":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v18, 0x0

    aput-object v19, v3, v18

    const-string v9, "%02d"

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v14, v3, [Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v18

    invoke-static {v9, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v2, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 186
    .local v2, "im":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v12}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 187
    const v3, 0x7f080070

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->local_notifications_timeLayout:Landroid/widget/RelativeLayout;

    .line 188
    const v3, 0x7f08006e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/SwitchCompat;

    .line 189
    .local v3, "local_notificationsButton":Landroid/support/v7/widget/SwitchCompat;
    iget-object v9, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v14, "local_notifications"

    move-object/from16 v20, v2

    const/4 v2, 0x0

    .end local v2    # "im":Landroid/view/inputmethod/InputMethodManager;
    .local v20, "im":Landroid/view/inputmethod/InputMethodManager;
    invoke-interface {v9, v14, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v3, v9}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 190
    new-instance v2, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$7;

    invoke-direct {v2, v0}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$7;-><init>(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;)V

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 206
    new-instance v2, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8;

    invoke-direct {v2, v0, v12}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8;-><init>(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v12, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const v2, 0x7f080036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SwitchCompat;

    .line 233
    .local v2, "upload_resultsButton":Landroid/support/v7/widget/SwitchCompat;
    iget-object v9, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v21, v3

    .end local v3    # "local_notificationsButton":Landroid/support/v7/widget/SwitchCompat;
    .local v21, "local_notificationsButton":Landroid/support/v7/widget/SwitchCompat;
    const-string v3, "upload_results"

    const/4 v4, 0x1

    invoke-interface {v9, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v2, v9}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 234
    new-instance v9, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$9;

    invoke-direct {v9, v0, v6, v7, v5}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$9;-><init>(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;Landroid/support/v7/widget/SwitchCompat;Landroid/support/v7/widget/SwitchCompat;Landroid/support/v7/widget/SwitchCompat;)V

    invoke-virtual {v2, v9}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 252
    iget-object v9, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v9, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    .line 253
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 254
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 255
    invoke-virtual {v5, v3}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    goto :goto_0

    .line 258
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 259
    invoke-virtual {v7, v4}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 260
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 263
    :goto_0
    iget-object v9, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v9, v14, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 264
    iget-object v4, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->local_notifications_timeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 266
    :cond_1
    iget-object v3, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->local_notifications_timeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 268
    :goto_1
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    .line 62
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 66
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 67
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    const v1, 0x7f0e0088

    invoke-virtual {v0, v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method
