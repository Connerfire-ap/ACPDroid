.class public Lorg/openobservatory/measurement_kit/nettests/NdtTest;
.super Ljava/lang/Object;
.source "NdtTest.java"

# interfaces
.implements Lorg/openobservatory/measurement_kit/nettests/BaseTest;


# instance fields
.field private wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lorg/openobservatory/measurement_kit/swig/NdtTest;

    invoke-direct {v0}, Lorg/openobservatory/measurement_kit/swig/NdtTest;-><init>()V

    iput-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    return-void
.end method


# virtual methods
.method public bridge synthetic add_input(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->add_input(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    move-result-object p1

    return-object p1
.end method

.method public add_input(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    invoke-virtual {v0, p1}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->add_input(Ljava/lang/String;)V

    .line 31
    return-object p0
.end method

.method public bridge synthetic increase_verbosity()Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->increase_verbosity()Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    move-result-object v0

    return-object v0
.end method

.method public increase_verbosity()Lorg/openobservatory/measurement_kit/nettests/NdtTest;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    invoke-virtual {v0}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->increase_verbosity()V

    .line 26
    return-object p0
.end method

.method public bridge synthetic on_entry(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->on_entry(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic on_entry(Lorg/openobservatory/measurement_kit/nettests/EntryCallback;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->on_entry(Lorg/openobservatory/measurement_kit/nettests/EntryCallback;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    move-result-object p1

    return-object p1
.end method

.method public on_entry(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;
    .locals 2
    .param p1, "event_id"    # Ljava/lang/String;
    .param p2, "router"    # Lorg/openobservatory/measurement_kit/android/IntentRouter;

    .line 120
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    new-instance v1, Lorg/openobservatory/measurement_kit/nettests/NdtTest$4;

    invoke-direct {v1, p0, p1, p2}, Lorg/openobservatory/measurement_kit/nettests/NdtTest$4;-><init>(Lorg/openobservatory/measurement_kit/nettests/NdtTest;Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)V

    invoke-virtual {v0, v1}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->on_entry(Lorg/openobservatory/measurement_kit/swig/EntryCallback;)V

    .line 130
    return-object p0
.end method

.method public on_entry(Lorg/openobservatory/measurement_kit/nettests/EntryCallback;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;
    .locals 1
    .param p1, "delegate"    # Lorg/openobservatory/measurement_kit/nettests/EntryCallback;

    .line 115
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    invoke-virtual {v0, p1}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->on_entry(Lorg/openobservatory/measurement_kit/swig/EntryCallback;)V

    .line 116
    return-object p0
.end method

.method public bridge synthetic on_event(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->on_event(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic on_event(Lorg/openobservatory/measurement_kit/nettests/EventCallback;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->on_event(Lorg/openobservatory/measurement_kit/nettests/EventCallback;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    move-result-object p1

    return-object p1
.end method

.method public on_event(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;
    .locals 2
    .param p1, "event_id"    # Ljava/lang/String;
    .param p2, "router"    # Lorg/openobservatory/measurement_kit/android/IntentRouter;

    .line 101
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    new-instance v1, Lorg/openobservatory/measurement_kit/nettests/NdtTest$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/openobservatory/measurement_kit/nettests/NdtTest$3;-><init>(Lorg/openobservatory/measurement_kit/nettests/NdtTest;Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)V

    invoke-virtual {v0, v1}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->on_event(Lorg/openobservatory/measurement_kit/swig/EventCallback;)V

    .line 111
    return-object p0
.end method

.method public on_event(Lorg/openobservatory/measurement_kit/nettests/EventCallback;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;
    .locals 1
    .param p1, "delegate"    # Lorg/openobservatory/measurement_kit/nettests/EventCallback;

    .line 96
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    invoke-virtual {v0, p1}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->on_event(Lorg/openobservatory/measurement_kit/swig/EventCallback;)V

    .line 97
    return-object p0
.end method

.method public bridge synthetic on_log(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->on_log(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic on_log(Lorg/openobservatory/measurement_kit/common/LogCallback;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->on_log(Lorg/openobservatory/measurement_kit/common/LogCallback;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    move-result-object p1

    return-object p1
.end method

.method public on_log(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;
    .locals 2
    .param p1, "event_id"    # Ljava/lang/String;
    .param p2, "router"    # Lorg/openobservatory/measurement_kit/android/IntentRouter;

    .line 61
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    new-instance v1, Lorg/openobservatory/measurement_kit/nettests/NdtTest$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/openobservatory/measurement_kit/nettests/NdtTest$1;-><init>(Lorg/openobservatory/measurement_kit/nettests/NdtTest;Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)V

    invoke-virtual {v0, v1}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->on_log(Lorg/openobservatory/measurement_kit/swig/LogCallback;)V

    .line 72
    return-object p0
.end method

.method public on_log(Lorg/openobservatory/measurement_kit/common/LogCallback;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;
    .locals 1
    .param p1, "delegate"    # Lorg/openobservatory/measurement_kit/common/LogCallback;

    .line 56
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    invoke-virtual {v0, p1}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->on_log(Lorg/openobservatory/measurement_kit/swig/LogCallback;)V

    .line 57
    return-object p0
.end method

.method public bridge synthetic on_progress(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->on_progress(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic on_progress(Lorg/openobservatory/measurement_kit/nettests/ProgressCallback;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->on_progress(Lorg/openobservatory/measurement_kit/nettests/ProgressCallback;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    move-result-object p1

    return-object p1
.end method

.method public on_progress(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;
    .locals 2
    .param p1, "event_id"    # Ljava/lang/String;
    .param p2, "router"    # Lorg/openobservatory/measurement_kit/android/IntentRouter;

    .line 81
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    new-instance v1, Lorg/openobservatory/measurement_kit/nettests/NdtTest$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/openobservatory/measurement_kit/nettests/NdtTest$2;-><init>(Lorg/openobservatory/measurement_kit/nettests/NdtTest;Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)V

    invoke-virtual {v0, v1}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->on_progress(Lorg/openobservatory/measurement_kit/swig/ProgressCallback;)V

    .line 92
    return-object p0
.end method

.method public on_progress(Lorg/openobservatory/measurement_kit/nettests/ProgressCallback;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;
    .locals 1
    .param p1, "delegate"    # Lorg/openobservatory/measurement_kit/nettests/ProgressCallback;

    .line 76
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    invoke-virtual {v0, p1}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->on_progress(Lorg/openobservatory/measurement_kit/swig/ProgressCallback;)V

    .line 77
    return-object p0
.end method

.method public run()V
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    invoke-virtual {v0}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->run()V

    .line 147
    return-void
.end method

.method public bridge synthetic set_error_filepath(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->set_error_filepath(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    move-result-object p1

    return-object p1
.end method

.method public set_error_filepath(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;
    .locals 1
    .param p1, "fpath"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    invoke-virtual {v0, p1}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->set_error_filepath(Ljava/lang/String;)V

    .line 47
    return-object p0
.end method

.method public bridge synthetic set_input_filepath(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->set_input_filepath(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    move-result-object p1

    return-object p1
.end method

.method public set_input_filepath(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;
    .locals 1
    .param p1, "fpath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    invoke-virtual {v0, p1}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->set_input_filepath(Ljava/lang/String;)V

    .line 37
    return-object p0
.end method

.method public bridge synthetic set_option(Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->set_option(Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    move-result-object p1

    return-object p1
.end method

.method public set_option(Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    invoke-virtual {v0, p1, p2}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->set_option(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-object p0
.end method

.method public bridge synthetic set_options(Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->set_options(Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    move-result-object p1

    return-object p1
.end method

.method public set_options(Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    invoke-virtual {v0, p1, p2}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->set_option(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-object p0
.end method

.method public bridge synthetic set_output_filepath(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->set_output_filepath(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    move-result-object p1

    return-object p1
.end method

.method public set_output_filepath(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/NdtTest;
    .locals 1
    .param p1, "fpath"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    invoke-virtual {v0, p1}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->set_output_filepath(Ljava/lang/String;)V

    .line 42
    return-object p0
.end method

.method public bridge synthetic set_verbosity(J)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->set_verbosity(J)Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    move-result-object p1

    return-object p1
.end method

.method public set_verbosity(J)Lorg/openobservatory/measurement_kit/nettests/NdtTest;
    .locals 1
    .param p1, "verbosity"    # J

    .line 20
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    invoke-virtual {v0, p1, p2}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->set_verbosity(J)V

    .line 21
    return-object p0
.end method

.method public start(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)V
    .locals 2
    .param p1, "event_id"    # Ljava/lang/String;
    .param p2, "router"    # Lorg/openobservatory/measurement_kit/android/IntentRouter;

    .line 154
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    new-instance v1, Lorg/openobservatory/measurement_kit/nettests/NdtTest$5;

    invoke-direct {v1, p0, p1, p2}, Lorg/openobservatory/measurement_kit/nettests/NdtTest$5;-><init>(Lorg/openobservatory/measurement_kit/nettests/NdtTest;Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)V

    invoke-virtual {v0, v1}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->start(Lorg/openobservatory/measurement_kit/swig/TestCompleteCallback;)V

    .line 163
    return-void
.end method

.method public start(Lorg/openobservatory/measurement_kit/nettests/TestCompleteCallback;)V
    .locals 1
    .param p1, "cb"    # Lorg/openobservatory/measurement_kit/nettests/TestCompleteCallback;

    .line 150
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    invoke-virtual {v0, p1}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->start(Lorg/openobservatory/measurement_kit/swig/TestCompleteCallback;)V

    .line 151
    return-void
.end method

.method public bridge synthetic use_logcat()Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->use_logcat()Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    move-result-object v0

    return-object v0
.end method

.method public use_logcat()Lorg/openobservatory/measurement_kit/nettests/NdtTest;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;->wrapper:Lorg/openobservatory/measurement_kit/swig/NdtTest;

    invoke-virtual {v0}, Lorg/openobservatory/measurement_kit/swig/NdtTest;->use_logcat()V

    .line 52
    return-object p0
.end method
