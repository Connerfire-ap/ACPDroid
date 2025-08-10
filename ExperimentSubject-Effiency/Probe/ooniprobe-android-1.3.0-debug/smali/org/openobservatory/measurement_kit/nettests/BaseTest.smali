.class public interface abstract Lorg/openobservatory/measurement_kit/nettests/BaseTest;
.super Ljava/lang/Object;
.source "BaseTest.java"


# virtual methods
.method public abstract add_input(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
.end method

.method public abstract increase_verbosity()Lorg/openobservatory/measurement_kit/nettests/BaseTest;
.end method

.method public abstract on_entry(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
.end method

.method public abstract on_entry(Lorg/openobservatory/measurement_kit/nettests/EntryCallback;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
.end method

.method public abstract on_event(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
.end method

.method public abstract on_event(Lorg/openobservatory/measurement_kit/nettests/EventCallback;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
.end method

.method public abstract on_log(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
.end method

.method public abstract on_log(Lorg/openobservatory/measurement_kit/common/LogCallback;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
.end method

.method public abstract on_progress(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
.end method

.method public abstract on_progress(Lorg/openobservatory/measurement_kit/nettests/ProgressCallback;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
.end method

.method public abstract run()V
.end method

.method public abstract set_error_filepath(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
.end method

.method public abstract set_input_filepath(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract set_option(Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
.end method

.method public abstract set_options(Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract set_output_filepath(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
.end method

.method public abstract set_verbosity(J)Lorg/openobservatory/measurement_kit/nettests/BaseTest;
.end method

.method public abstract start(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)V
.end method

.method public abstract start(Lorg/openobservatory/measurement_kit/nettests/TestCompleteCallback;)V
.end method

.method public abstract use_logcat()Lorg/openobservatory/measurement_kit/nettests/BaseTest;
.end method
